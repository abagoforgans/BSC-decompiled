contract main {




// =====================  Runtime code  =====================


#
#  - sub_1767ae33(?)
#  - sub_326fd4b9(?)
#  - withdrawToken(address arg1, uint256 arg2)
#  - sub_b66bda48(?)
#  - transferToken(address arg1, address arg2, uint256 arg3)
#
const getBalance = (eth.balance(this.address) - 10^18)


address owner;
array of address contracts;
array of uint256 stor10;
uint256 stor11;
uint256 baseToken;
uint8 isDebug;
uint8 sub_6ab13e7f; offset 8
uint256 stor13; offset 8
array of address tokens;
array of uint8 stor3;
array of struct sub_4c7494b5;
array of struct sub_3e3bc345;
array of uint256 sub_b84f3a43;
array of uint256 sub_91304c8d;
array of uint256 sub_1856f21d;
array of uint256 sub_ba9f8b03;

function sub_1856f21d(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_1856f21d.length
    return sub_1856f21d[arg1]
}

function sub_3e3bc345(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_3e3bc345.length
    return sub_3e3bc345[arg1].field_0
}

function sub_46958a33(?) {
    require calldata.size - 4 >= 32
    require arg1 < stor3.length
    return bool(stor('array', ('div', 0.03125, ('param', 'arg1')), ('name', 'stor3', 3))[uint8(arg1)])
}

function contracts(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < contracts.length
    return contracts[arg1]
}

function sub_4c7494b5(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_4c7494b5.length
    return sub_4c7494b5[arg1].field_0
}

function tokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < tokens.length
    return tokens[arg1]
}

function sub_6ab13e7f(?) {
    return bool(sub_6ab13e7f)
}

function owner() {
    return owner
}

function sub_91304c8d(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_91304c8d.length
    return sub_91304c8d[arg1]
}

function sub_b84f3a43(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_b84f3a43.length
    return sub_b84f3a43[arg1]
}

function sub_ba9f8b03(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_ba9f8b03.length
    return sub_ba9f8b03[arg1]
}

function baseToken() {
    return baseToken
}

function isDebug() {
    return bool(isDebug)
}

function sub_ea6484e6(?) {
  stop
}

function _fallback() payable {
    revert
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if not arg1:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    else:
        if arg1 > eth.balance(this.address):
            revert with 0, 'amt_tb'
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getContracts() {
    if sub_4c7494b5.length:
        mem[128] = uint256(sub_4c7494b5.field_0)
        idx = 128
        s = 0
        while (32 * sub_4c7494b5.length) + 96 > idx:
            mem[idx + 32] = sub_4c7494b5[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if sub_3e3bc345.length:
        mem[(32 * sub_4c7494b5.length) + 160] = uint256(sub_3e3bc345.field_0)
        idx = (32 * sub_4c7494b5.length) + 160
        s = 0
        while (32 * sub_4c7494b5.length) + (32 * sub_3e3bc345.length) + 128 > idx:
            mem[idx + 32] = sub_3e3bc345[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * sub_4c7494b5.length) + (32 * sub_3e3bc345.length) + 256 len floor32(sub_4c7494b5.length)] = mem[128 len floor32(sub_4c7494b5.length)]
    mem[(64 * sub_4c7494b5.length) + (32 * sub_3e3bc345.length) + 256] = sub_3e3bc345.length
    mem[(64 * sub_4c7494b5.length) + (32 * sub_3e3bc345.length) + 288 len floor32(sub_3e3bc345.length)] = mem[(32 * sub_4c7494b5.length) + 160 len floor32(sub_3e3bc345.length)]
    return Array(len=sub_4c7494b5.length, data=mem[128 len floor32(sub_4c7494b5.length)], mem[(32 * sub_4c7494b5.length) + (32 * sub_3e3bc345.length) + floor32(sub_4c7494b5.length) + 256 len (32 * sub_4c7494b5.length) + (32 * sub_3e3bc345.length) + -floor32(sub_4c7494b5.length) + 32]), 
           (32 * sub_4c7494b5.length) + 96
}

function sub_cf807bb5(?) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg3.length
    mem[(32 * arg1.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg3.length) + 160] = 0
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    stor10.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor10.length > idx:
            stor10[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            stor10[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor10.length > idx:
            stor10[idx] = 0
            idx = idx + 1
            continue 
    stor11 = arg2
    stor3.length = arg3.length
    if not arg3.length:
        idx = 0
        while stor3.length + 31 / 32 > idx:
            uint8(stor3[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg1.length) + 160
        while (32 * arg1.length) + (32 * arg3.length) + 160 > idx:
            uint256(stor3) = bool(mem[idx]) * 256^s or !(255 * 256^s) and uint256(stor3)
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
        s = sha3(3)
        while idx:
            stor[s] = !(255 * 256^idx) and stor[s]
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg3.length) + 31) >> 5 * None + 3 / 32)
        while stor3.length + 31 / 32 > idx:
            uint8(stor3[idx]) = 0
            idx = idx + 1
            continue 
    stor13 = Mask(248, 0, arg4)
}

function sub_727c6d0e(?) {
    require calldata.size - 4 >= 288
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = arg5.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256] = arg6.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    require arg7 <= 4294967296
    require arg7 + 36 <= calldata.size
    require arg7.length <= 4294967296 and arg7 + (32 * arg7.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288] = arg7.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320 len 32 * arg7.length] = call.data[arg7 + 36 len 32 * arg7.length]
    require arg8 <= 4294967296
    require arg8 + 36 <= calldata.size
    require arg8.length <= 4294967296 and arg8 + (32 * arg8.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320] = arg8.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352 len 32 * arg8.length] = call.data[arg8 + 36 len 32 * arg8.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352] = 0
    if arg3.length != arg4.length:
        revert with 0, 'CACB'
    if arg4.length != arg5.length:
        revert with 0, 'CAp1'
    if arg5.length != arg6.length:
        revert with 0, 'pa12'
    if arg6.length != arg7.length:
        revert with 0, 'pa21'
    if arg7.length != arg8.length:
        revert with 0, 'pb12'
    contracts.length = arg1.length
    if not arg1.length:
        idx = 0
        while contracts.length > idx:
            contracts[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            contracts[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while contracts.length > idx:
            contracts[idx] = 0
            idx = idx + 1
            continue 
    tokens.length = arg2.length
    if not arg2.length:
        idx = 0
        while tokens.length > idx:
            tokens[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg1.length) + 160
        while (32 * arg1.length) + (32 * arg2.length) + 160 > idx:
            tokens[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while tokens.length > idx:
            tokens[idx] = 0
            idx = idx + 1
            continue 
    baseToken = arg9
    sub_4c7494b5.length = arg3.length
    if not arg3.length:
        idx = 0
        while sub_4c7494b5.length > idx:
            sub_4c7494b5[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg1.length) + (32 * arg2.length) + 192
        while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192 > idx:
            sub_4c7494b5[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
        while sub_4c7494b5.length > idx:
            sub_4c7494b5[idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_3e3bc345.length = arg4.length
    if not arg4.length:
        idx = 0
        while sub_3e3bc345.length > idx:
            sub_3e3bc345[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224
        while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 > idx:
            sub_3e3bc345[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
        while sub_3e3bc345.length > idx:
            sub_3e3bc345[idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_b84f3a43.length = arg5.length
    if not arg5.length:
        idx = 0
        while sub_b84f3a43.length > idx:
            sub_b84f3a43[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256
        while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256 > idx:
            sub_b84f3a43[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
        while sub_b84f3a43.length > idx:
            sub_b84f3a43[idx] = 0
            idx = idx + 1
            continue 
    sub_91304c8d.length = arg6.length
    if not arg6.length:
        idx = 0
        while sub_91304c8d.length > idx:
            sub_91304c8d[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
        while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
            sub_91304c8d[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
        while sub_91304c8d.length > idx:
            sub_91304c8d[idx] = 0
            idx = idx + 1
            continue 
    sub_1856f21d.length = arg7.length
    if not arg7.length:
        idx = 0
        while sub_1856f21d.length > idx:
            sub_1856f21d[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
        while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
            sub_1856f21d[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
        while sub_1856f21d.length > idx:
            sub_1856f21d[idx] = 0
            idx = idx + 1
            continue 
    sub_ba9f8b03.length = arg8.length
    if not arg8.length:
        idx = 0
        while sub_ba9f8b03.length > idx:
            sub_ba9f8b03[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
        while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
            sub_ba9f8b03[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
        while sub_ba9f8b03.length > idx:
            sub_ba9f8b03[idx] = 0
            idx = idx + 1
            continue 
}

function sub_413a1c2e(?) {
    require calldata.size - 4 >= 32
    mem[96] = 10
    mem[128 len 320] = call.data[calldata.size len 320]
    mem[448] = 2
    mem[480 len 64] = call.data[calldata.size len 64]
    mem[544] = 3
    mem[64] = 672
    mem[576 len 96] = call.data[calldata.size len 96]
    idx = 0
    s = 0
    t = 96
    u = 96
    while idx < sub_4c7494b5.length:
        require idx < sub_b84f3a43.length
        if sub_b84f3a43[idx] == baseToken:
            revert with 0, 'pa1b'
        require idx < sub_1856f21d.length
        if sub_1856f21d[idx] == baseToken:
            revert with 0, 'pb1b'
        require idx < sub_b84f3a43.length
        require idx < sub_91304c8d.length
        require baseToken < tokens.length
        if not sub_91304c8d[idx]:
            require mem[448]
            mem[480] = tokens[stor12]
            require sub_b84f3a43[idx] < tokens.length
            require 1 < mem[448]
            mem[512] = tokens[stor6[idx]]
            require idx < sub_4c7494b5.length
            require sub_4c7494b5[idx].field_0 < contracts.length
            mem[0] = 1
            _258 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[448]
            _260 = mem[448]
            u = 0
            while u < 32 * _260:
                mem[u + mem[64] + 100] = mem[u + 480]
                u = u + 32
                continue 
            require ext_code.size(contracts[stor4[idx].field_0])
            staticcall contracts[stor4[idx].field_0].mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len (32 * _260) + _258 + -mem[64] + 96]
            if not ext_call.success:
                idx = idx + 1
                s = s
                t = t
                u = 448
                continue 
            _469 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _472 = mem[_469]
            require mem[_469] <= 4294967296
            require mem[_469] + 32 <= return_data.size
            require mem[_469 + mem[_469]] <= 4294967296 and mem[_469] + (32 * mem[_469 + mem[_469]]) + 32 <= return_data.size
            mem[_469 + ceil32(return_data.size)] = mem[_469 + mem[_469]]
            _477 = mem[_469 + _472]
            t = 0
            while t < 32 * _477:
                mem[t + _469 + ceil32(return_data.size) + 32] = mem[t + _469 + _472 + 32]
                t = t + 32
                continue 
            mem[64] = (32 * _477) + _469 + ceil32(return_data.size) + 32
            require idx < sub_1856f21d.length
            require idx < sub_ba9f8b03.length
            require sub_1856f21d[idx] < tokens.length
            if not sub_ba9f8b03[idx]:
                require mem[448]
                mem[480] = tokens[stor8[idx]]
                require baseToken < tokens.length
                require 1 < mem[448]
                mem[512] = tokens[stor12]
                require idx < sub_3e3bc345.length
                require sub_3e3bc345[idx].field_0 < contracts.length
                mem[0] = 1
                require mem[_469 + ceil32(return_data.size)] - 1 < mem[_469 + ceil32(return_data.size)]
                _698 = mem[(32 * mem[_469 + ceil32(return_data.size)] - 1) + _469 + ceil32(return_data.size) + 32]
                mem[(32 * _477) + _469 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _477) + _469 + ceil32(return_data.size) + 36] = _698
                mem[(32 * _477) + _469 + ceil32(return_data.size) + 68] = 64
                mem[(32 * _477) + _469 + ceil32(return_data.size) + 100] = mem[448]
                _701 = mem[448]
                t = 0
                while t < 32 * _701:
                    mem[t + (32 * _477) + _469 + ceil32(return_data.size) + 132] = mem[t + 480]
                    t = t + 32
                    continue 
                require ext_code.size(contracts[stor5[idx].field_0])
                staticcall contracts[stor5[idx].field_0].getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args _698, 64, mem[(32 * _477) + _469 + ceil32(return_data.size) + 100 len (32 * _701) + 32]
                if not ext_call.success:
                    idx = idx + 1
                    s = s
                    t = 448
                    u = 448
                    continue 
                mem[(32 * _477) + _469 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _477) + _469 + (2 * ceil32(return_data.size)) + 32
                require return_data.size >= 32
                _860 = mem[(32 * _477) + _469 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _698) >> 32
                require mem[(32 * _477) + _469 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _698) >> 32 <= 4294967296
                require mem[(32 * _477) + _469 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _698) >> 32 + 32 <= return_data.size
                require mem[(32 * _477) + _469 + ceil32(return_data.size) + mem[(32 * _477) + _469 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _698) >> 32 + 32] <= 4294967296 and mem[(32 * _477) + _469 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _698) >> 32 + (32 * mem[(32 * _477) + _469 + ceil32(return_data.size) + mem[(32 * _477) + _469 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _698) >> 32 + 32]) + 32 <= return_data.size
                mem[(32 * _477) + _469 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _477) + _469 + ceil32(return_data.size) + mem[(32 * _477) + _469 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _698) >> 32 + 32]
                _869 = mem[(32 * _477) + _469 + ceil32(return_data.size) + _860 + 32]
                t = 0
                while t < 32 * _869:
                    mem[t + (32 * _477) + _469 + (2 * ceil32(return_data.size)) + 64] = mem[t + (32 * _477) + _469 + ceil32(return_data.size) + _860 + 64]
                    t = t + 32
                    continue 
                mem[64] = (32 * _869) + (32 * _477) + _469 + (2 * ceil32(return_data.size)) + 64
                require mem[(32 * _477) + _469 + (2 * ceil32(return_data.size)) + 32] - 1 < mem[(32 * _477) + _469 + (2 * ceil32(return_data.size)) + 32]
                _985 = mem[(32 * mem[(32 * _477) + _469 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _477) + _469 + (2 * ceil32(return_data.size)) + 64]
                if mem[(32 * mem[(32 * _477) + _469 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _477) + _469 + (2 * ceil32(return_data.size)) + 64] <= arg1:
                    idx = idx + 1
                    s = s
                    t = 448
                    u = 448
                    continue 
                if mem[(32 * mem[(32 * _477) + _469 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _477) + _469 + (2 * ceil32(return_data.size)) + 64] - arg1 <= s:
                    idx = idx + 1
                    s = s
                    t = 448
                    u = 448
                    continue 
                require idx < sub_4c7494b5.length
                require 0 < mem[96]
                mem[128] = sub_4c7494b5[idx].field_0
                require idx < sub_3e3bc345.length
                require 1 < mem[96]
                mem[160] = sub_3e3bc345[idx].field_0
                require idx < sub_b84f3a43.length
                require 2 < mem[96]
                mem[192] = sub_b84f3a43[idx]
                require idx < sub_91304c8d.length
                require 3 < mem[96]
                mem[224] = sub_91304c8d[idx]
                require idx < sub_1856f21d.length
                require 4 < mem[96]
                mem[256] = sub_1856f21d[idx]
                require idx < sub_ba9f8b03.length
                mem[0] = 9
                require 5 < mem[96]
                mem[288] = sub_ba9f8b03[idx]
                require 0 < mem[_469 + ceil32(return_data.size)]
                require 6 < mem[96]
                mem[320] = mem[_469 + ceil32(return_data.size) + 32]
                require mem[_469 + ceil32(return_data.size)] - 1 < mem[_469 + ceil32(return_data.size)]
                require 7 < mem[96]
                mem[352] = mem[(32 * mem[_469 + ceil32(return_data.size)] - 1) + _469 + ceil32(return_data.size) + 32]
                require 8 < mem[96]
                mem[384] = _985
                require 9 < mem[96]
                mem[416] = _985 - arg1
                idx = idx + 1
                s = _985 - arg1
                t = 448
                u = 448
                continue 
            require mem[544]
            mem[576] = tokens[stor8[idx]]
            require sub_ba9f8b03[idx] < tokens.length
            require 1 < mem[544]
            mem[608] = tokens[stor9[idx]]
            require baseToken < tokens.length
            require 2 < mem[544]
            mem[640] = tokens[stor12]
            require idx < sub_3e3bc345.length
            require sub_3e3bc345[idx].field_0 < contracts.length
            mem[0] = 1
            require mem[_469 + ceil32(return_data.size)] - 1 < mem[_469 + ceil32(return_data.size)]
            _712 = mem[(32 * mem[_469 + ceil32(return_data.size)] - 1) + _469 + ceil32(return_data.size) + 32]
            mem[(32 * _477) + _469 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _477) + _469 + ceil32(return_data.size) + 36] = _712
            mem[(32 * _477) + _469 + ceil32(return_data.size) + 68] = 64
            mem[(32 * _477) + _469 + ceil32(return_data.size) + 100] = mem[544]
            _715 = mem[544]
            t = 0
            while t < 32 * _715:
                mem[t + (32 * _477) + _469 + ceil32(return_data.size) + 132] = mem[t + 576]
                t = t + 32
                continue 
            require ext_code.size(contracts[stor5[idx].field_0])
            staticcall contracts[stor5[idx].field_0].getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _712, 64, mem[(32 * _477) + _469 + ceil32(return_data.size) + 100 len (32 * _715) + 32]
            if not ext_call.success:
                idx = idx + 1
                s = s
                t = 544
                u = 448
                continue 
            mem[(32 * _477) + _469 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _477) + _469 + (2 * ceil32(return_data.size)) + 32
            require return_data.size >= 32
            _858 = mem[(32 * _477) + _469 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _712) >> 32
            require mem[(32 * _477) + _469 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _712) >> 32 <= 4294967296
            require mem[(32 * _477) + _469 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _712) >> 32 + 32 <= return_data.size
            require mem[(32 * _477) + _469 + ceil32(return_data.size) + mem[(32 * _477) + _469 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _712) >> 32 + 32] <= 4294967296 and mem[(32 * _477) + _469 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _712) >> 32 + (32 * mem[(32 * _477) + _469 + ceil32(return_data.size) + mem[(32 * _477) + _469 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _712) >> 32 + 32]) + 32 <= return_data.size
            mem[(32 * _477) + _469 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _477) + _469 + ceil32(return_data.size) + mem[(32 * _477) + _469 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _712) >> 32 + 32]
            _868 = mem[(32 * _477) + _469 + ceil32(return_data.size) + _858 + 32]
            t = 0
            while t < 32 * _868:
                mem[t + (32 * _477) + _469 + (2 * ceil32(return_data.size)) + 64] = mem[t + (32 * _477) + _469 + ceil32(return_data.size) + _858 + 64]
                t = t + 32
                continue 
            mem[64] = (32 * _868) + (32 * _477) + _469 + (2 * ceil32(return_data.size)) + 64
            require mem[(32 * _477) + _469 + (2 * ceil32(return_data.size)) + 32] - 1 < mem[(32 * _477) + _469 + (2 * ceil32(return_data.size)) + 32]
            _984 = mem[(32 * mem[(32 * _477) + _469 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _477) + _469 + (2 * ceil32(return_data.size)) + 64]
            if mem[(32 * mem[(32 * _477) + _469 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _477) + _469 + (2 * ceil32(return_data.size)) + 64] <= arg1:
                idx = idx + 1
                s = s
                t = 544
                u = 448
                continue 
            if mem[(32 * mem[(32 * _477) + _469 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _477) + _469 + (2 * ceil32(return_data.size)) + 64] - arg1 <= s:
                idx = idx + 1
                s = s
                t = 544
                u = 448
                continue 
            require idx < sub_4c7494b5.length
            require 0 < mem[96]
            mem[128] = sub_4c7494b5[idx].field_0
            require idx < sub_3e3bc345.length
            require 1 < mem[96]
            mem[160] = sub_3e3bc345[idx].field_0
            require idx < sub_b84f3a43.length
            require 2 < mem[96]
            mem[192] = sub_b84f3a43[idx]
            require idx < sub_91304c8d.length
            require 3 < mem[96]
            mem[224] = sub_91304c8d[idx]
            require idx < sub_1856f21d.length
            require 4 < mem[96]
            mem[256] = sub_1856f21d[idx]
            require idx < sub_ba9f8b03.length
            mem[0] = 9
            require 5 < mem[96]
            mem[288] = sub_ba9f8b03[idx]
            require 0 < mem[_469 + ceil32(return_data.size)]
            require 6 < mem[96]
            mem[320] = mem[_469 + ceil32(return_data.size) + 32]
            require mem[_469 + ceil32(return_data.size)] - 1 < mem[_469 + ceil32(return_data.size)]
            require 7 < mem[96]
            mem[352] = mem[(32 * mem[_469 + ceil32(return_data.size)] - 1) + _469 + ceil32(return_data.size) + 32]
            require 8 < mem[96]
            mem[384] = _984
            require 9 < mem[96]
            mem[416] = _984 - arg1
            idx = idx + 1
            s = _984 - arg1
            t = 544
            u = 448
            continue 
        require mem[544]
        mem[576] = tokens[stor12]
        require sub_b84f3a43[idx] < tokens.length
        require 1 < mem[544]
        mem[608] = tokens[stor6[idx]]
        require sub_91304c8d[idx] < tokens.length
        require 2 < mem[544]
        mem[640] = tokens[stor7[idx]]
        require idx < sub_4c7494b5.length
        require sub_4c7494b5[idx].field_0 < contracts.length
        mem[0] = 1
        _263 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = mem[544]
        _265 = mem[544]
        u = 0
        while u < 32 * _265:
            mem[u + mem[64] + 100] = mem[u + 576]
            u = u + 32
            continue 
        require ext_code.size(contracts[stor4[idx].field_0])
        staticcall contracts[stor4[idx].field_0].mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len (32 * _265) + _263 + -mem[64] + 96]
        if not ext_call.success:
            idx = idx + 1
            s = s
            t = t
            u = 544
            continue 
        _468 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _470 = mem[_468]
        require mem[_468] <= 4294967296
        require mem[_468] + 32 <= return_data.size
        require mem[_468 + mem[_468]] <= 4294967296 and mem[_468] + (32 * mem[_468 + mem[_468]]) + 32 <= return_data.size
        mem[_468 + ceil32(return_data.size)] = mem[_468 + mem[_468]]
        _476 = mem[_468 + _470]
        t = 0
        while t < 32 * _476:
            mem[t + _468 + ceil32(return_data.size) + 32] = mem[t + _468 + _470 + 32]
            t = t + 32
            continue 
        mem[64] = (32 * _476) + _468 + ceil32(return_data.size) + 32
        require idx < sub_1856f21d.length
        require idx < sub_ba9f8b03.length
        require sub_1856f21d[idx] < tokens.length
        if not sub_ba9f8b03[idx]:
            require mem[448]
            mem[480] = tokens[stor8[idx]]
            require baseToken < tokens.length
            require 1 < mem[448]
            mem[512] = tokens[stor12]
            require idx < sub_3e3bc345.length
            require sub_3e3bc345[idx].field_0 < contracts.length
            mem[0] = 1
            require mem[_468 + ceil32(return_data.size)] - 1 < mem[_468 + ceil32(return_data.size)]
            _693 = mem[(32 * mem[_468 + ceil32(return_data.size)] - 1) + _468 + ceil32(return_data.size) + 32]
            mem[(32 * _476) + _468 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _476) + _468 + ceil32(return_data.size) + 36] = _693
            mem[(32 * _476) + _468 + ceil32(return_data.size) + 68] = 64
            mem[(32 * _476) + _468 + ceil32(return_data.size) + 100] = mem[448]
            _696 = mem[448]
            t = 0
            while t < 32 * _696:
                mem[t + (32 * _476) + _468 + ceil32(return_data.size) + 132] = mem[t + 480]
                t = t + 32
                continue 
            require ext_code.size(contracts[stor5[idx].field_0])
            staticcall contracts[stor5[idx].field_0].getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _693, 64, mem[(32 * _476) + _468 + ceil32(return_data.size) + 100 len (32 * _696) + 32]
            if not ext_call.success:
                idx = idx + 1
                s = s
                t = 448
                u = 544
                continue 
            mem[(32 * _476) + _468 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _476) + _468 + (2 * ceil32(return_data.size)) + 32
            require return_data.size >= 32
            _856 = mem[(32 * _476) + _468 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _693) >> 32
            require mem[(32 * _476) + _468 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _693) >> 32 <= 4294967296
            require mem[(32 * _476) + _468 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _693) >> 32 + 32 <= return_data.size
            require mem[(32 * _476) + _468 + ceil32(return_data.size) + mem[(32 * _476) + _468 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _693) >> 32 + 32] <= 4294967296 and mem[(32 * _476) + _468 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _693) >> 32 + (32 * mem[(32 * _476) + _468 + ceil32(return_data.size) + mem[(32 * _476) + _468 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _693) >> 32 + 32]) + 32 <= return_data.size
            mem[(32 * _476) + _468 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _476) + _468 + ceil32(return_data.size) + mem[(32 * _476) + _468 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _693) >> 32 + 32]
            _867 = mem[(32 * _476) + _468 + ceil32(return_data.size) + _856 + 32]
            t = 0
            while t < 32 * _867:
                mem[t + (32 * _476) + _468 + (2 * ceil32(return_data.size)) + 64] = mem[t + (32 * _476) + _468 + ceil32(return_data.size) + _856 + 64]
                t = t + 32
                continue 
            mem[64] = (32 * _867) + (32 * _476) + _468 + (2 * ceil32(return_data.size)) + 64
            require mem[(32 * _476) + _468 + (2 * ceil32(return_data.size)) + 32] - 1 < mem[(32 * _476) + _468 + (2 * ceil32(return_data.size)) + 32]
            _983 = mem[(32 * mem[(32 * _476) + _468 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _476) + _468 + (2 * ceil32(return_data.size)) + 64]
            if mem[(32 * mem[(32 * _476) + _468 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _476) + _468 + (2 * ceil32(return_data.size)) + 64] <= arg1:
                idx = idx + 1
                s = s
                t = 448
                u = 544
                continue 
            if mem[(32 * mem[(32 * _476) + _468 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _476) + _468 + (2 * ceil32(return_data.size)) + 64] - arg1 <= s:
                idx = idx + 1
                s = s
                t = 448
                u = 544
                continue 
            require idx < sub_4c7494b5.length
            require 0 < mem[96]
            mem[128] = sub_4c7494b5[idx].field_0
            require idx < sub_3e3bc345.length
            require 1 < mem[96]
            mem[160] = sub_3e3bc345[idx].field_0
            require idx < sub_b84f3a43.length
            require 2 < mem[96]
            mem[192] = sub_b84f3a43[idx]
            require idx < sub_91304c8d.length
            require 3 < mem[96]
            mem[224] = sub_91304c8d[idx]
            require idx < sub_1856f21d.length
            require 4 < mem[96]
            mem[256] = sub_1856f21d[idx]
            require idx < sub_ba9f8b03.length
            mem[0] = 9
            require 5 < mem[96]
            mem[288] = sub_ba9f8b03[idx]
            require 0 < mem[_468 + ceil32(return_data.size)]
            require 6 < mem[96]
            mem[320] = mem[_468 + ceil32(return_data.size) + 32]
            require mem[_468 + ceil32(return_data.size)] - 1 < mem[_468 + ceil32(return_data.size)]
            require 7 < mem[96]
            mem[352] = mem[(32 * mem[_468 + ceil32(return_data.size)] - 1) + _468 + ceil32(return_data.size) + 32]
            require 8 < mem[96]
            mem[384] = _983
            require 9 < mem[96]
            mem[416] = _983 - arg1
            idx = idx + 1
            s = _983 - arg1
            t = 448
            u = 544
            continue 
        require mem[544]
        mem[576] = tokens[stor8[idx]]
        require sub_ba9f8b03[idx] < tokens.length
        require 1 < mem[544]
        mem[608] = tokens[stor9[idx]]
        require baseToken < tokens.length
        require 2 < mem[544]
        mem[640] = tokens[stor12]
        require idx < sub_3e3bc345.length
        require sub_3e3bc345[idx].field_0 < contracts.length
        mem[0] = 1
        require mem[_468 + ceil32(return_data.size)] - 1 < mem[_468 + ceil32(return_data.size)]
        _706 = mem[(32 * mem[_468 + ceil32(return_data.size)] - 1) + _468 + ceil32(return_data.size) + 32]
        mem[(32 * _476) + _468 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _476) + _468 + ceil32(return_data.size) + 36] = _706
        mem[(32 * _476) + _468 + ceil32(return_data.size) + 68] = 64
        mem[(32 * _476) + _468 + ceil32(return_data.size) + 100] = mem[544]
        _709 = mem[544]
        t = 0
        while t < 32 * _709:
            mem[t + (32 * _476) + _468 + ceil32(return_data.size) + 132] = mem[t + 576]
            t = t + 32
            continue 
        require ext_code.size(contracts[stor5[idx].field_0])
        staticcall contracts[stor5[idx].field_0].getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args _706, 64, mem[(32 * _476) + _468 + ceil32(return_data.size) + 100 len (32 * _709) + 32]
        if not ext_call.success:
            idx = idx + 1
            s = s
            t = 544
            u = 544
            continue 
        mem[(32 * _476) + _468 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _476) + _468 + (2 * ceil32(return_data.size)) + 32
        require return_data.size >= 32
        _854 = mem[(32 * _476) + _468 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _706) >> 32
        require mem[(32 * _476) + _468 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _706) >> 32 <= 4294967296
        require mem[(32 * _476) + _468 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _706) >> 32 + 32 <= return_data.size
        require mem[(32 * _476) + _468 + ceil32(return_data.size) + mem[(32 * _476) + _468 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _706) >> 32 + 32] <= 4294967296 and mem[(32 * _476) + _468 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _706) >> 32 + (32 * mem[(32 * _476) + _468 + ceil32(return_data.size) + mem[(32 * _476) + _468 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _706) >> 32 + 32]) + 32 <= return_data.size
        mem[(32 * _476) + _468 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _476) + _468 + ceil32(return_data.size) + mem[(32 * _476) + _468 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _706) >> 32 + 32]
        _866 = mem[(32 * _476) + _468 + ceil32(return_data.size) + _854 + 32]
        t = 0
        while t < 32 * _866:
            mem[t + (32 * _476) + _468 + (2 * ceil32(return_data.size)) + 64] = mem[t + (32 * _476) + _468 + ceil32(return_data.size) + _854 + 64]
            t = t + 32
            continue 
        mem[64] = (32 * _866) + (32 * _476) + _468 + (2 * ceil32(return_data.size)) + 64
        require mem[(32 * _476) + _468 + (2 * ceil32(return_data.size)) + 32] - 1 < mem[(32 * _476) + _468 + (2 * ceil32(return_data.size)) + 32]
        _982 = mem[(32 * mem[(32 * _476) + _468 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _476) + _468 + (2 * ceil32(return_data.size)) + 64]
        if mem[(32 * mem[(32 * _476) + _468 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _476) + _468 + (2 * ceil32(return_data.size)) + 64] <= arg1:
            idx = idx + 1
            s = s
            t = 544
            u = 544
            continue 
        if mem[(32 * mem[(32 * _476) + _468 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _476) + _468 + (2 * ceil32(return_data.size)) + 64] - arg1 <= s:
            idx = idx + 1
            s = s
            t = 544
            u = 544
            continue 
        require idx < sub_4c7494b5.length
        require 0 < mem[96]
        mem[128] = sub_4c7494b5[idx].field_0
        require idx < sub_3e3bc345.length
        require 1 < mem[96]
        mem[160] = sub_3e3bc345[idx].field_0
        require idx < sub_b84f3a43.length
        require 2 < mem[96]
        mem[192] = sub_b84f3a43[idx]
        require idx < sub_91304c8d.length
        require 3 < mem[96]
        mem[224] = sub_91304c8d[idx]
        require idx < sub_1856f21d.length
        require 4 < mem[96]
        mem[256] = sub_1856f21d[idx]
        require idx < sub_ba9f8b03.length
        mem[0] = 9
        require 5 < mem[96]
        mem[288] = sub_ba9f8b03[idx]
        require 0 < mem[_468 + ceil32(return_data.size)]
        require 6 < mem[96]
        mem[320] = mem[_468 + ceil32(return_data.size) + 32]
        require mem[_468 + ceil32(return_data.size)] - 1 < mem[_468 + ceil32(return_data.size)]
        require 7 < mem[96]
        mem[352] = mem[(32 * mem[_468 + ceil32(return_data.size)] - 1) + _468 + ceil32(return_data.size) + 32]
        require 8 < mem[96]
        mem[384] = _982
        require 9 < mem[96]
        mem[416] = _982 - arg1
        idx = idx + 1
        s = _982 - arg1
        t = 544
        u = 544
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function sub_dbb36ceb(?) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    s = 0
    t = 0
    u = 96
    while idx < stor10.length:
        mem[0] = 10
        _247 = mem[64]
        mem[mem[64] + 32 len 320] = call.data[calldata.size len 320]
        mem[mem[64] + 352] = 2
        mem[mem[64] + 384 len 64] = call.data[calldata.size len 64]
        mem[mem[64] + 448] = 3
        mem[64] = mem[64] + 576
        mem[_247 + 480 len 96] = call.data[calldata.size len 96]
        t = 0
        u = 0
        v = 96
        w = 96
        while t < sub_4c7494b5.length:
            require t < sub_b84f3a43.length
            if sub_b84f3a43[t] == baseToken:
                revert with 0, 'pa1b'
            require t < sub_1856f21d.length
            if sub_1856f21d[t] == baseToken:
                revert with 0, 'pb1b'
            require t < sub_b84f3a43.length
            require t < sub_91304c8d.length
            require baseToken < tokens.length
            if not sub_91304c8d[t]:
                require mem[_247 + 352]
                mem[_247 + 384] = tokens[stor12]
                require sub_b84f3a43[t] < tokens.length
                require 1 < mem[_247 + 352]
                mem[_247 + 416] = tokens[stor6[t]]
                require t < sub_4c7494b5.length
                require sub_4c7494b5[t].field_0 < contracts.length
                mem[0] = 1
                _516 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = stor10[idx]
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = mem[_247 + 352]
                _518 = mem[_247 + 352]
                s = 0
                while s < 32 * _518:
                    mem[s + mem[64] + 100] = mem[s + _247 + 384]
                    s = s + 32
                    continue 
                require ext_code.size(contracts[stor4[t].field_0])
                staticcall contracts[stor4[t].field_0].mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (32 * _518) + _516 + -mem[64] + 96]
                if not ext_call.success:
                    t = t + 1
                    u = u
                    v = v
                    w = _247 + 352
                    continue 
                _727 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _730 = mem[_727]
                require mem[_727] <= 4294967296
                require mem[_727] + 32 <= return_data.size
                require mem[_727 + mem[_727]] <= 4294967296 and mem[_727] + (32 * mem[_727 + mem[_727]]) + 32 <= return_data.size
                mem[_727 + ceil32(return_data.size)] = mem[_727 + mem[_727]]
                _735 = mem[_727 + _730]
                s = 0
                while s < 32 * _735:
                    mem[s + _727 + ceil32(return_data.size) + 32] = mem[s + _727 + _730 + 32]
                    s = s + 32
                    continue 
                mem[64] = (32 * _735) + _727 + ceil32(return_data.size) + 32
                require t < sub_1856f21d.length
                require t < sub_ba9f8b03.length
                require sub_1856f21d[t] < tokens.length
                if not sub_ba9f8b03[t]:
                    require mem[_247 + 352]
                    mem[_247 + 384] = tokens[stor8[t]]
                    require baseToken < tokens.length
                    require 1 < mem[_247 + 352]
                    mem[_247 + 416] = tokens[stor12]
                    require t < sub_3e3bc345.length
                    require sub_3e3bc345[t].field_0 < contracts.length
                    mem[0] = 1
                    require mem[_727 + ceil32(return_data.size)] - 1 < mem[_727 + ceil32(return_data.size)]
                    _956 = mem[(32 * mem[_727 + ceil32(return_data.size)] - 1) + _727 + ceil32(return_data.size) + 32]
                    mem[(32 * _735) + _727 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _735) + _727 + ceil32(return_data.size) + 36] = _956
                    mem[(32 * _735) + _727 + ceil32(return_data.size) + 68] = 64
                    mem[(32 * _735) + _727 + ceil32(return_data.size) + 100] = mem[_247 + 352]
                    _959 = mem[_247 + 352]
                    s = 0
                    while s < 32 * _959:
                        mem[s + (32 * _735) + _727 + ceil32(return_data.size) + 132] = mem[s + _247 + 384]
                        s = s + 32
                        continue 
                    require ext_code.size(contracts[stor5[t].field_0])
                    staticcall contracts[stor5[t].field_0].getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args _956, 64, mem[(32 * _735) + _727 + ceil32(return_data.size) + 100 len (32 * _959) + 32]
                    if not ext_call.success:
                        t = t + 1
                        u = u
                        v = _247 + 352
                        w = _247 + 352
                        continue 
                    mem[(32 * _735) + _727 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _735) + _727 + (2 * ceil32(return_data.size)) + 32
                    require return_data.size >= 32
                    _1118 = mem[(32 * _735) + _727 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _956) >> 32
                    require mem[(32 * _735) + _727 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _956) >> 32 <= 4294967296
                    require mem[(32 * _735) + _727 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _956) >> 32 + 32 <= return_data.size
                    require mem[(32 * _735) + _727 + ceil32(return_data.size) + mem[(32 * _735) + _727 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _956) >> 32 + 32] <= 4294967296 and mem[(32 * _735) + _727 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _956) >> 32 + (32 * mem[(32 * _735) + _727 + ceil32(return_data.size) + mem[(32 * _735) + _727 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _956) >> 32 + 32]) + 32 <= return_data.size
                    mem[(32 * _735) + _727 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _735) + _727 + ceil32(return_data.size) + mem[(32 * _735) + _727 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _956) >> 32 + 32]
                    _1127 = mem[(32 * _735) + _727 + ceil32(return_data.size) + _1118 + 32]
                    s = 0
                    while s < 32 * _1127:
                        mem[s + (32 * _735) + _727 + (2 * ceil32(return_data.size)) + 64] = mem[s + (32 * _735) + _727 + ceil32(return_data.size) + _1118 + 64]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1127) + (32 * _735) + _727 + (2 * ceil32(return_data.size)) + 64
                    require mem[(32 * _735) + _727 + (2 * ceil32(return_data.size)) + 32] - 1 < mem[(32 * _735) + _727 + (2 * ceil32(return_data.size)) + 32]
                    _1243 = mem[(32 * mem[(32 * _735) + _727 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _735) + _727 + (2 * ceil32(return_data.size)) + 64]
                    if mem[(32 * mem[(32 * _735) + _727 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _735) + _727 + (2 * ceil32(return_data.size)) + 64] <= stor10[idx]:
                        t = t + 1
                        u = u
                        v = _247 + 352
                        w = _247 + 352
                        continue 
                    if mem[(32 * mem[(32 * _735) + _727 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _735) + _727 + (2 * ceil32(return_data.size)) + 64] - stor10[idx] <= u:
                        t = t + 1
                        u = u
                        v = _247 + 352
                        w = _247 + 352
                        continue 
                    require t < sub_4c7494b5.length
                    mem[0] = 4
                    require 0 < mem[_247]
                    mem[_247 + 32] = sub_4c7494b5[t].field_0
                    require t < sub_3e3bc345.length
                    mem[0] = 5
                    require 1 < mem[_247]
                    mem[_247 + 64] = sub_3e3bc345[t].field_0
                    require t < sub_b84f3a43.length
                    mem[0] = 6
                    require 2 < mem[_247]
                    mem[_247 + 96] = sub_b84f3a43[t]
                    require t < sub_91304c8d.length
                    mem[0] = 7
                    require 3 < mem[_247]
                    mem[_247 + 128] = sub_91304c8d[t]
                    require t < sub_1856f21d.length
                    mem[0] = 8
                    require 4 < mem[_247]
                    mem[_247 + 160] = sub_1856f21d[t]
                    require t < sub_ba9f8b03.length
                    mem[0] = 9
                    require 5 < mem[_247]
                    mem[_247 + 192] = sub_ba9f8b03[t]
                    require 0 < mem[_727 + ceil32(return_data.size)]
                    require 6 < mem[_247]
                    mem[_247 + 224] = mem[_727 + ceil32(return_data.size) + 32]
                    require mem[_727 + ceil32(return_data.size)] - 1 < mem[_727 + ceil32(return_data.size)]
                    require 7 < mem[_247]
                    mem[_247 + 256] = mem[(32 * mem[_727 + ceil32(return_data.size)] - 1) + _727 + ceil32(return_data.size) + 32]
                    require 8 < mem[_247]
                    mem[_247 + 288] = _1243
                    require 9 < mem[_247]
                    mem[_247 + 320] = _1243 - stor10[idx]
                    t = t + 1
                    u = _1243 - stor10[idx]
                    v = _247 + 352
                    w = _247 + 352
                    continue 
                require mem[_247 + 448]
                mem[_247 + 480] = tokens[stor8[t]]
                require sub_ba9f8b03[t] < tokens.length
                require 1 < mem[_247 + 448]
                mem[_247 + 512] = tokens[stor9[t]]
                require baseToken < tokens.length
                require 2 < mem[_247 + 448]
                mem[_247 + 544] = tokens[stor12]
                require t < sub_3e3bc345.length
                require sub_3e3bc345[t].field_0 < contracts.length
                mem[0] = 1
                require mem[_727 + ceil32(return_data.size)] - 1 < mem[_727 + ceil32(return_data.size)]
                _970 = mem[(32 * mem[_727 + ceil32(return_data.size)] - 1) + _727 + ceil32(return_data.size) + 32]
                mem[(32 * _735) + _727 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _735) + _727 + ceil32(return_data.size) + 36] = _970
                mem[(32 * _735) + _727 + ceil32(return_data.size) + 68] = 64
                mem[(32 * _735) + _727 + ceil32(return_data.size) + 100] = mem[_247 + 448]
                _973 = mem[_247 + 448]
                s = 0
                while s < 32 * _973:
                    mem[s + (32 * _735) + _727 + ceil32(return_data.size) + 132] = mem[s + _247 + 480]
                    s = s + 32
                    continue 
                require ext_code.size(contracts[stor5[t].field_0])
                staticcall contracts[stor5[t].field_0].getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args _970, 64, mem[(32 * _735) + _727 + ceil32(return_data.size) + 100 len (32 * _973) + 32]
                if not ext_call.success:
                    t = t + 1
                    u = u
                    v = _247 + 448
                    w = _247 + 352
                    continue 
                mem[(32 * _735) + _727 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _735) + _727 + (2 * ceil32(return_data.size)) + 32
                require return_data.size >= 32
                _1116 = mem[(32 * _735) + _727 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _970) >> 32
                require mem[(32 * _735) + _727 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _970) >> 32 <= 4294967296
                require mem[(32 * _735) + _727 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _970) >> 32 + 32 <= return_data.size
                require mem[(32 * _735) + _727 + ceil32(return_data.size) + mem[(32 * _735) + _727 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _970) >> 32 + 32] <= 4294967296 and mem[(32 * _735) + _727 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _970) >> 32 + (32 * mem[(32 * _735) + _727 + ceil32(return_data.size) + mem[(32 * _735) + _727 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _970) >> 32 + 32]) + 32 <= return_data.size
                mem[(32 * _735) + _727 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _735) + _727 + ceil32(return_data.size) + mem[(32 * _735) + _727 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _970) >> 32 + 32]
                _1126 = mem[(32 * _735) + _727 + ceil32(return_data.size) + _1116 + 32]
                s = 0
                while s < 32 * _1126:
                    mem[s + (32 * _735) + _727 + (2 * ceil32(return_data.size)) + 64] = mem[s + (32 * _735) + _727 + ceil32(return_data.size) + _1116 + 64]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1126) + (32 * _735) + _727 + (2 * ceil32(return_data.size)) + 64
                require mem[(32 * _735) + _727 + (2 * ceil32(return_data.size)) + 32] - 1 < mem[(32 * _735) + _727 + (2 * ceil32(return_data.size)) + 32]
                _1242 = mem[(32 * mem[(32 * _735) + _727 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _735) + _727 + (2 * ceil32(return_data.size)) + 64]
                if mem[(32 * mem[(32 * _735) + _727 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _735) + _727 + (2 * ceil32(return_data.size)) + 64] <= stor10[idx]:
                    t = t + 1
                    u = u
                    v = _247 + 448
                    w = _247 + 352
                    continue 
                if mem[(32 * mem[(32 * _735) + _727 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _735) + _727 + (2 * ceil32(return_data.size)) + 64] - stor10[idx] <= u:
                    t = t + 1
                    u = u
                    v = _247 + 448
                    w = _247 + 352
                    continue 
                require t < sub_4c7494b5.length
                mem[0] = 4
                require 0 < mem[_247]
                mem[_247 + 32] = sub_4c7494b5[t].field_0
                require t < sub_3e3bc345.length
                mem[0] = 5
                require 1 < mem[_247]
                mem[_247 + 64] = sub_3e3bc345[t].field_0
                require t < sub_b84f3a43.length
                mem[0] = 6
                require 2 < mem[_247]
                mem[_247 + 96] = sub_b84f3a43[t]
                require t < sub_91304c8d.length
                mem[0] = 7
                require 3 < mem[_247]
                mem[_247 + 128] = sub_91304c8d[t]
                require t < sub_1856f21d.length
                mem[0] = 8
                require 4 < mem[_247]
                mem[_247 + 160] = sub_1856f21d[t]
                require t < sub_ba9f8b03.length
                mem[0] = 9
                require 5 < mem[_247]
                mem[_247 + 192] = sub_ba9f8b03[t]
                require 0 < mem[_727 + ceil32(return_data.size)]
                require 6 < mem[_247]
                mem[_247 + 224] = mem[_727 + ceil32(return_data.size) + 32]
                require mem[_727 + ceil32(return_data.size)] - 1 < mem[_727 + ceil32(return_data.size)]
                require 7 < mem[_247]
                mem[_247 + 256] = mem[(32 * mem[_727 + ceil32(return_data.size)] - 1) + _727 + ceil32(return_data.size) + 32]
                require 8 < mem[_247]
                mem[_247 + 288] = _1242
                require 9 < mem[_247]
                mem[_247 + 320] = _1242 - stor10[idx]
                t = t + 1
                u = _1242 - stor10[idx]
                v = _247 + 448
                w = _247 + 352
                continue 
            require mem[_247 + 448]
            mem[_247 + 480] = tokens[stor12]
            require sub_b84f3a43[t] < tokens.length
            require 1 < mem[_247 + 448]
            mem[_247 + 512] = tokens[stor6[t]]
            require sub_91304c8d[t] < tokens.length
            require 2 < mem[_247 + 448]
            mem[_247 + 544] = tokens[stor7[t]]
            require t < sub_4c7494b5.length
            require sub_4c7494b5[t].field_0 < contracts.length
            mem[0] = 1
            _521 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = stor10[idx]
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[_247 + 448]
            _523 = mem[_247 + 448]
            s = 0
            while s < 32 * _523:
                mem[s + mem[64] + 100] = mem[s + _247 + 480]
                s = s + 32
                continue 
            require ext_code.size(contracts[stor4[t].field_0])
            staticcall contracts[stor4[t].field_0].mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len (32 * _523) + _521 + -mem[64] + 96]
            if not ext_call.success:
                t = t + 1
                u = u
                v = v
                w = _247 + 448
                continue 
            _726 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _728 = mem[_726]
            require mem[_726] <= 4294967296
            require mem[_726] + 32 <= return_data.size
            require mem[_726 + mem[_726]] <= 4294967296 and mem[_726] + (32 * mem[_726 + mem[_726]]) + 32 <= return_data.size
            mem[_726 + ceil32(return_data.size)] = mem[_726 + mem[_726]]
            _734 = mem[_726 + _728]
            s = 0
            while s < 32 * _734:
                mem[s + _726 + ceil32(return_data.size) + 32] = mem[s + _726 + _728 + 32]
                s = s + 32
                continue 
            mem[64] = (32 * _734) + _726 + ceil32(return_data.size) + 32
            require t < sub_1856f21d.length
            require t < sub_ba9f8b03.length
            require sub_1856f21d[t] < tokens.length
            if not sub_ba9f8b03[t]:
                require mem[_247 + 352]
                mem[_247 + 384] = tokens[stor8[t]]
                require baseToken < tokens.length
                require 1 < mem[_247 + 352]
                mem[_247 + 416] = tokens[stor12]
                require t < sub_3e3bc345.length
                require sub_3e3bc345[t].field_0 < contracts.length
                mem[0] = 1
                require mem[_726 + ceil32(return_data.size)] - 1 < mem[_726 + ceil32(return_data.size)]
                _951 = mem[(32 * mem[_726 + ceil32(return_data.size)] - 1) + _726 + ceil32(return_data.size) + 32]
                mem[(32 * _734) + _726 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _734) + _726 + ceil32(return_data.size) + 36] = _951
                mem[(32 * _734) + _726 + ceil32(return_data.size) + 68] = 64
                mem[(32 * _734) + _726 + ceil32(return_data.size) + 100] = mem[_247 + 352]
                _954 = mem[_247 + 352]
                s = 0
                while s < 32 * _954:
                    mem[s + (32 * _734) + _726 + ceil32(return_data.size) + 132] = mem[s + _247 + 384]
                    s = s + 32
                    continue 
                require ext_code.size(contracts[stor5[t].field_0])
                staticcall contracts[stor5[t].field_0].getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args _951, 64, mem[(32 * _734) + _726 + ceil32(return_data.size) + 100 len (32 * _954) + 32]
                if not ext_call.success:
                    t = t + 1
                    u = u
                    v = _247 + 352
                    w = _247 + 448
                    continue 
                mem[(32 * _734) + _726 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _734) + _726 + (2 * ceil32(return_data.size)) + 32
                require return_data.size >= 32
                _1114 = mem[(32 * _734) + _726 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _951) >> 32
                require mem[(32 * _734) + _726 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _951) >> 32 <= 4294967296
                require mem[(32 * _734) + _726 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _951) >> 32 + 32 <= return_data.size
                require mem[(32 * _734) + _726 + ceil32(return_data.size) + mem[(32 * _734) + _726 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _951) >> 32 + 32] <= 4294967296 and mem[(32 * _734) + _726 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _951) >> 32 + (32 * mem[(32 * _734) + _726 + ceil32(return_data.size) + mem[(32 * _734) + _726 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _951) >> 32 + 32]) + 32 <= return_data.size
                mem[(32 * _734) + _726 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _734) + _726 + ceil32(return_data.size) + mem[(32 * _734) + _726 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _951) >> 32 + 32]
                _1125 = mem[(32 * _734) + _726 + ceil32(return_data.size) + _1114 + 32]
                s = 0
                while s < 32 * _1125:
                    mem[s + (32 * _734) + _726 + (2 * ceil32(return_data.size)) + 64] = mem[s + (32 * _734) + _726 + ceil32(return_data.size) + _1114 + 64]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1125) + (32 * _734) + _726 + (2 * ceil32(return_data.size)) + 64
                require mem[(32 * _734) + _726 + (2 * ceil32(return_data.size)) + 32] - 1 < mem[(32 * _734) + _726 + (2 * ceil32(return_data.size)) + 32]
                _1241 = mem[(32 * mem[(32 * _734) + _726 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _734) + _726 + (2 * ceil32(return_data.size)) + 64]
                if mem[(32 * mem[(32 * _734) + _726 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _734) + _726 + (2 * ceil32(return_data.size)) + 64] <= stor10[idx]:
                    t = t + 1
                    u = u
                    v = _247 + 352
                    w = _247 + 448
                    continue 
                if mem[(32 * mem[(32 * _734) + _726 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _734) + _726 + (2 * ceil32(return_data.size)) + 64] - stor10[idx] <= u:
                    t = t + 1
                    u = u
                    v = _247 + 352
                    w = _247 + 448
                    continue 
                require t < sub_4c7494b5.length
                mem[0] = 4
                require 0 < mem[_247]
                mem[_247 + 32] = sub_4c7494b5[t].field_0
                require t < sub_3e3bc345.length
                mem[0] = 5
                require 1 < mem[_247]
                mem[_247 + 64] = sub_3e3bc345[t].field_0
                require t < sub_b84f3a43.length
                mem[0] = 6
                require 2 < mem[_247]
                mem[_247 + 96] = sub_b84f3a43[t]
                require t < sub_91304c8d.length
                mem[0] = 7
                require 3 < mem[_247]
                mem[_247 + 128] = sub_91304c8d[t]
                require t < sub_1856f21d.length
                mem[0] = 8
                require 4 < mem[_247]
                mem[_247 + 160] = sub_1856f21d[t]
                require t < sub_ba9f8b03.length
                mem[0] = 9
                require 5 < mem[_247]
                mem[_247 + 192] = sub_ba9f8b03[t]
                require 0 < mem[_726 + ceil32(return_data.size)]
                require 6 < mem[_247]
                mem[_247 + 224] = mem[_726 + ceil32(return_data.size) + 32]
                require mem[_726 + ceil32(return_data.size)] - 1 < mem[_726 + ceil32(return_data.size)]
                require 7 < mem[_247]
                mem[_247 + 256] = mem[(32 * mem[_726 + ceil32(return_data.size)] - 1) + _726 + ceil32(return_data.size) + 32]
                require 8 < mem[_247]
                mem[_247 + 288] = _1241
                require 9 < mem[_247]
                mem[_247 + 320] = _1241 - stor10[idx]
                t = t + 1
                u = _1241 - stor10[idx]
                v = _247 + 352
                w = _247 + 448
                continue 
            require mem[_247 + 448]
            mem[_247 + 480] = tokens[stor8[t]]
            require sub_ba9f8b03[t] < tokens.length
            require 1 < mem[_247 + 448]
            mem[_247 + 512] = tokens[stor9[t]]
            require baseToken < tokens.length
            require 2 < mem[_247 + 448]
            mem[_247 + 544] = tokens[stor12]
            require t < sub_3e3bc345.length
            require sub_3e3bc345[t].field_0 < contracts.length
            mem[0] = 1
            require mem[_726 + ceil32(return_data.size)] - 1 < mem[_726 + ceil32(return_data.size)]
            _964 = mem[(32 * mem[_726 + ceil32(return_data.size)] - 1) + _726 + ceil32(return_data.size) + 32]
            mem[(32 * _734) + _726 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _734) + _726 + ceil32(return_data.size) + 36] = _964
            mem[(32 * _734) + _726 + ceil32(return_data.size) + 68] = 64
            mem[(32 * _734) + _726 + ceil32(return_data.size) + 100] = mem[_247 + 448]
            _967 = mem[_247 + 448]
            s = 0
            while s < 32 * _967:
                mem[s + (32 * _734) + _726 + ceil32(return_data.size) + 132] = mem[s + _247 + 480]
                s = s + 32
                continue 
            require ext_code.size(contracts[stor5[t].field_0])
            staticcall contracts[stor5[t].field_0].getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _964, 64, mem[(32 * _734) + _726 + ceil32(return_data.size) + 100 len (32 * _967) + 32]
            if not ext_call.success:
                t = t + 1
                u = u
                v = _247 + 448
                w = _247 + 448
                continue 
            mem[(32 * _734) + _726 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _734) + _726 + (2 * ceil32(return_data.size)) + 32
            require return_data.size >= 32
            _1112 = mem[(32 * _734) + _726 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _964) >> 32
            require mem[(32 * _734) + _726 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _964) >> 32 <= 4294967296
            require mem[(32 * _734) + _726 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _964) >> 32 + 32 <= return_data.size
            require mem[(32 * _734) + _726 + ceil32(return_data.size) + mem[(32 * _734) + _726 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _964) >> 32 + 32] <= 4294967296 and mem[(32 * _734) + _726 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _964) >> 32 + (32 * mem[(32 * _734) + _726 + ceil32(return_data.size) + mem[(32 * _734) + _726 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _964) >> 32 + 32]) + 32 <= return_data.size
            mem[(32 * _734) + _726 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _734) + _726 + ceil32(return_data.size) + mem[(32 * _734) + _726 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _964) >> 32 + 32]
            _1124 = mem[(32 * _734) + _726 + ceil32(return_data.size) + _1112 + 32]
            s = 0
            while s < 32 * _1124:
                mem[s + (32 * _734) + _726 + (2 * ceil32(return_data.size)) + 64] = mem[s + (32 * _734) + _726 + ceil32(return_data.size) + _1112 + 64]
                s = s + 32
                continue 
            mem[64] = (32 * _1124) + (32 * _734) + _726 + (2 * ceil32(return_data.size)) + 64
            require mem[(32 * _734) + _726 + (2 * ceil32(return_data.size)) + 32] - 1 < mem[(32 * _734) + _726 + (2 * ceil32(return_data.size)) + 32]
            _1240 = mem[(32 * mem[(32 * _734) + _726 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _734) + _726 + (2 * ceil32(return_data.size)) + 64]
            if mem[(32 * mem[(32 * _734) + _726 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _734) + _726 + (2 * ceil32(return_data.size)) + 64] <= stor10[idx]:
                t = t + 1
                u = u
                v = _247 + 448
                w = _247 + 448
                continue 
            if mem[(32 * mem[(32 * _734) + _726 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _734) + _726 + (2 * ceil32(return_data.size)) + 64] - stor10[idx] <= u:
                t = t + 1
                u = u
                v = _247 + 448
                w = _247 + 448
                continue 
            require t < sub_4c7494b5.length
            mem[0] = 4
            require 0 < mem[_247]
            mem[_247 + 32] = sub_4c7494b5[t].field_0
            require t < sub_3e3bc345.length
            mem[0] = 5
            require 1 < mem[_247]
            mem[_247 + 64] = sub_3e3bc345[t].field_0
            require t < sub_b84f3a43.length
            mem[0] = 6
            require 2 < mem[_247]
            mem[_247 + 96] = sub_b84f3a43[t]
            require t < sub_91304c8d.length
            mem[0] = 7
            require 3 < mem[_247]
            mem[_247 + 128] = sub_91304c8d[t]
            require t < sub_1856f21d.length
            mem[0] = 8
            require 4 < mem[_247]
            mem[_247 + 160] = sub_1856f21d[t]
            require t < sub_ba9f8b03.length
            mem[0] = 9
            require 5 < mem[_247]
            mem[_247 + 192] = sub_ba9f8b03[t]
            require 0 < mem[_726 + ceil32(return_data.size)]
            require 6 < mem[_247]
            mem[_247 + 224] = mem[_726 + ceil32(return_data.size) + 32]
            require mem[_726 + ceil32(return_data.size)] - 1 < mem[_726 + ceil32(return_data.size)]
            require 7 < mem[_247]
            mem[_247 + 256] = mem[(32 * mem[_726 + ceil32(return_data.size)] - 1) + _726 + ceil32(return_data.size) + 32]
            require 8 < mem[_247]
            mem[_247 + 288] = _1240
            require 9 < mem[_247]
            mem[_247 + 320] = _1240 - stor10[idx]
            t = t + 1
            u = _1240 - stor10[idx]
            v = _247 + 448
            w = _247 + 448
            continue 
        require 9 < mem[_247]
        if mem[_247 + 320] > s:
            require 9 < mem[_247]
            idx = idx + 1
            s = mem[_247 + 320]
            t = stor10[idx]
            u = _247
            continue 
        if not sub_6ab13e7f:
            idx = idx + 1
            s = s
            t = stor10[idx]
            u = _247
            continue 
        _498 = mem[64]
        mem[mem[64] + 32] = stor10[idx]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[_247]
        _500 = mem[_247]
        idx = 0
        while idx < 32 * _500:
            mem[idx + mem[64] + 96] = mem[idx + _247 + 32]
            idx = idx + 32
            continue 
        return memory
          from mem[64]
           len (32 * _500) + _498 + -mem[64] + 96
    mem[mem[64] + 32] = t
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[u]
    _245 = mem[u]
    mem[mem[64] + 96 len floor32(mem[u])] = mem[u + 32 len floor32(mem[u])]
    return 64, t, mem[mem[64] + 64 len (32 * _245) + 32]
}



}
