contract main {




// =====================  Runtime code  =====================


#
#  - cancelOrder(address arg1, address arg2, address arg3, address arg4, bytes arg5)
#
const sub_70de629f(?) = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee


mapping of uint256 ethDeposits;

function ethDeposits(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return ethDeposits[arg1]
}

function _fallback() payable {
    revert
}

function encodeEthOrder(address arg1, address arg2, address arg3, address arg4, bytes arg5, bytes32 arg6) {
    require calldata.size - 4 >= 192
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[128] = arg1
    mem[160] = arg2
    mem[192] = arg3
    mem[224] = arg4
    mem[288] = arg6
    mem[256] = 192
    mem[320] = arg5.length
    mem[352 len arg5.length] = arg5[all]
    return Array(len=ceil32(arg5.length) + 224, data=mem[128 len ceil32(ceil32(arg5.length)) + 7], mem[ceil32(arg5.length) + ceil32(ceil32(arg5.length)) + 423 len (3 * ceil32(arg5.length)) + -ceil32(ceil32(arg5.length)) + 217]), 
}

function executeOrder(address arg1, address arg2, address arg3, bytes arg4, bytes arg5, bytes arg6) {
    require calldata.size - 4 >= 192
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + arg6.length + 36 <= calldata.size
    mem[180 len arg5.length] = arg5[all]
    mem[arg5.length + 180] = 0
    if arg5.length != 65:
        revert with 0, 'ECDSA: invalid signature length'
    if mem[212] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 
                    32,
                    34,
                    0x4e45434453413a20696e76616c6964207369676e6174757265202773272076616c75,
                    mem[ceil32(arg5.length) + 282 len 30]
    revert with 0, 
                32,
                34,
                0x4445434453413a20696e76616c6964207369676e6174757265202776272076616c75,
                mem[ceil32(arg5.length) + 282 len 30]
}

function vaultOfOrder(address arg1, address arg2, address arg3, address arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    mem[ceil32(arg5.length) + 160] = arg1
    mem[ceil32(arg5.length) + 192] = arg2
    mem[ceil32(arg5.length) + 224] = arg3
    mem[ceil32(arg5.length) + 256] = arg4
    mem[ceil32(arg5.length) + 288] = 160
    mem[ceil32(arg5.length) + 320] = arg5.length
    mem[ceil32(arg5.length) + 352 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
    if not arg5.length % 32:
        mem[ceil32(arg5.length) + 128] = arg5.length + 192
    else:
        mem[floor32(arg5.length) + ceil32(arg5.length) + 352] = mem[floor32(arg5.length) + ceil32(arg5.length) + -(arg5.length % 32) + 384 len arg5.length % 32]
        mem[ceil32(arg5.length) + 128] = floor32(arg5.length) + 224
    return address(sha3(0, Mask(160, 96, this.address) >> 96, sha3(mem[ceil32(arg5.length) + 160 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]]), 0xfa3da1081bc86587310fce8f3a5309785fc567b9b20875900cb289302d6bfa97))
}

function keyOf(address arg1, address arg2, address arg3, address arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    mem[ceil32(arg5.length) + 160] = arg1
    mem[ceil32(arg5.length) + 192] = arg2
    mem[ceil32(arg5.length) + 224] = arg3
    mem[ceil32(arg5.length) + 256] = arg4
    mem[ceil32(arg5.length) + 288] = 160
    mem[ceil32(arg5.length) + 320] = arg5.length
    mem[ceil32(arg5.length) + 352 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
    if not arg5.length % 32:
        mem[ceil32(arg5.length) + 128] = arg5.length + 192
        mem[arg5.length + ceil32(arg5.length) + 352] = sha3(mem[ceil32(arg5.length) + 160 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]])
        return memory
          from arg5.length + ceil32(arg5.length) + 352
           len 32
    mem[floor32(arg5.length) + ceil32(arg5.length) + 352] = mem[floor32(arg5.length) + ceil32(arg5.length) + -(arg5.length % 32) + 384 len arg5.length % 32]
    mem[ceil32(arg5.length) + 128] = floor32(arg5.length) + 224
    mem[floor32(arg5.length) + ceil32(arg5.length) + 384] = sha3(mem[ceil32(arg5.length) + 160 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]])
    return memory
      from floor32(arg5.length) + ceil32(arg5.length) + 384
       len 32
}

function canExecuteOrder(address arg1, address arg2, address arg3, address arg4, bytes arg5, bytes arg6) {
    require calldata.size - 4 >= 192
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + arg6.length + 36 <= calldata.size
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    mem[ceil32(arg5.length) + 160] = arg1
    mem[ceil32(arg5.length) + 192] = arg2
    mem[ceil32(arg5.length) + 224] = arg3
    mem[ceil32(arg5.length) + 256] = arg4
    mem[ceil32(arg5.length) + 288] = 160
    mem[ceil32(arg5.length) + 320] = arg5.length
    mem[ceil32(arg5.length) + 352 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
    mem[ceil32(arg5.length) + 128] = arg5.length + 192
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
        require ext_code.size(arg1)
        staticcall arg1.canExecute(address rg1, uint256 rg2, bytes rg3, bytes rg4) with:
                gas gas_remaining wei
               args address(arg2), ethDeposits[mem[ceil32(arg5.length) + 160 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]]], Array(len=arg5.length, data=arg5[all]), ceil32(arg5.length) + 160
    else:
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args address(sha3(0, Mask(160, 96, this.address) >> 96, sha3(mem[ceil32(arg5.length) + 160 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]]), 0xfa3da1081bc86587310fce8f3a5309785fc567b9b20875900cb289302d6bfa97))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        staticcall arg1.canExecute(address rg1, uint256 rg2, bytes rg3, bytes rg4) with:
                gas gas_remaining wei
               args address(arg2), ext_call.return_data[0], Array(len=arg5.length, data=arg5[all]), ceil32(arg5.length) + 160
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function existOrder(address arg1, address arg2, address arg3, address arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    mem[ceil32(arg5.length) + 160] = arg1
    mem[ceil32(arg5.length) + 192] = arg2
    mem[ceil32(arg5.length) + 224] = arg3
    mem[ceil32(arg5.length) + 256] = arg4
    mem[ceil32(arg5.length) + 288] = 160
    mem[ceil32(arg5.length) + 320] = arg5.length
    mem[ceil32(arg5.length) + 352 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
    if not arg5.length % 32:
        mem[ceil32(arg5.length) + 128] = arg5.length + 192
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
            mem[arg5.length + ceil32(arg5.length) + 352] = bool(ethDeposits[mem[ceil32(arg5.length) + 160 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]]])
            return memory
              from arg5.length + ceil32(arg5.length) + 352
               len 32
    else:
        mem[floor32(arg5.length) + ceil32(arg5.length) + 352] = mem[floor32(arg5.length) + ceil32(arg5.length) + -(arg5.length % 32) + 384 len arg5.length % 32]
        mem[ceil32(arg5.length) + 128] = floor32(arg5.length) + 224
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
            mem[floor32(arg5.length) + ceil32(arg5.length) + 384] = bool(ethDeposits[mem[ceil32(arg5.length) + 160 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]]])
            return memory
              from floor32(arg5.length) + ceil32(arg5.length) + 384
               len 32
    ('iszero', ('eq', 1364068194842176056990105843868530818345537040110, ('param', 'arg2')))
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args address(sha3(0, Mask(160, 96, this.address) >> 96, sha3(mem[ceil32(arg5.length) + 160 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]]), 0xfa3da1081bc86587310fce8f3a5309785fc567b9b20875900cb289302d6bfa97))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function decodeOrder(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg1.length >= 192
    _3 = mem[128]
    _4 = mem[160]
    _5 = mem[192]
    _6 = mem[224]
    _7 = mem[256]
    require mem[256] <= 4294967296
    require mem[256] + 64 <= arg1.length + 32
    require arg1.length + 32 >= mem[mem[256] + 128] + mem[256] + 64 and mem[mem[256] + 128] <= 4294967296
    mem[ceil32(arg1.length) + 128] = mem[mem[256] + 128]
    _10 = mem[_7 + 128]
    mem[ceil32(arg1.length) + 160 len ceil32(mem[_7 + 128])] = mem[_7 + 160 len ceil32(mem[_7 + 128])]
    if not _10 % 32:
        mem[64] = _10 + ceil32(arg1.length) + 160
        _30 = mem[288]
        mem[_10 + ceil32(arg1.length) + 160] = address(_3)
        mem[_10 + ceil32(arg1.length) + 192] = address(_4)
        mem[_10 + ceil32(arg1.length) + 224] = address(_5)
        mem[_10 + ceil32(arg1.length) + 256] = address(_6)
        mem[_10 + ceil32(arg1.length) + 320] = _30
        mem[_10 + ceil32(arg1.length) + 288] = 192
        mem[_10 + ceil32(arg1.length) + 352] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[_10 + ceil32(arg1.length) + 384 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            return memory
              from _10 + ceil32(arg1.length) + 160
               len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 224
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + _10 + ceil32(arg1.length) + 384] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + _10 + ceil32(arg1.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 416 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
        return memory
          from _10 + ceil32(arg1.length) + 160
           len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 256
    mem[floor32(_10) + ceil32(arg1.length) + 160] = mem[floor32(_10) + ceil32(arg1.length) + -(_10 % 32) + 192 len _10 % 32]
    mem[64] = floor32(_10) + ceil32(arg1.length) + 192
    _35 = mem[288]
    mem[floor32(_10) + ceil32(arg1.length) + 192] = address(_3)
    mem[floor32(_10) + ceil32(arg1.length) + 224] = address(_4)
    mem[floor32(_10) + ceil32(arg1.length) + 256] = address(_5)
    mem[floor32(_10) + ceil32(arg1.length) + 288] = address(_6)
    mem[floor32(_10) + ceil32(arg1.length) + 352] = _35
    mem[floor32(_10) + ceil32(arg1.length) + 320] = 192
    mem[floor32(_10) + ceil32(arg1.length) + 384] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[floor32(_10) + ceil32(arg1.length) + 416 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
        return memory
          from floor32(_10) + ceil32(arg1.length) + 192
           len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 224
    mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(_10) + ceil32(arg1.length) + 416] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(_10) + ceil32(arg1.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 448 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
    return memory
      from floor32(_10) + ceil32(arg1.length) + 192
       len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 256
}

function encodeTokenOrder(address arg1, address arg2, address arg3, address arg4, bytes arg5, bytes32 arg6, uint256 arg7) {
    require calldata.size - 4 >= 224
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    mem[ceil32(arg5.length) + 160] = arg1
    mem[ceil32(arg5.length) + 192] = arg2
    mem[ceil32(arg5.length) + 224] = arg3
    mem[ceil32(arg5.length) + 256] = arg4
    mem[ceil32(arg5.length) + 288] = 160
    mem[ceil32(arg5.length) + 320] = arg5.length
    mem[ceil32(arg5.length) + 352 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
    if not arg5.length % 32:
        mem[ceil32(arg5.length) + 128] = arg5.length + 192
        _74 = sha3(mem[ceil32(arg5.length) + 160 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]])
        mem[arg5.length + ceil32(arg5.length) + 501] = arg1
        mem[arg5.length + ceil32(arg5.length) + 533] = arg2
        mem[arg5.length + ceil32(arg5.length) + 565] = arg3
        mem[arg5.length + ceil32(arg5.length) + 597] = arg4
        mem[arg5.length + ceil32(arg5.length) + 661] = arg6
        mem[arg5.length + ceil32(arg5.length) + 629] = 192
        mem[arg5.length + ceil32(arg5.length) + 693] = arg5.length
        mem[arg5.length + ceil32(arg5.length) + 725 len arg5.length] = arg5[all]
        mem[(2 * arg5.length) + ceil32(arg5.length) + 725] = 0
        mem[arg5.length + (2 * ceil32(arg5.length)) + 761] = address(sha3(0, Mask(160, 96, this.address) >> 96, _74, 0xfa3da1081bc86587310fce8f3a5309785fc567b9b20875900cb289302d6bfa97))
        mem[arg5.length + (2 * ceil32(arg5.length)) + 793] = arg7
        mem[arg5.length + (2 * ceil32(arg5.length)) + 825] = 96
        mem[arg5.length + (2 * ceil32(arg5.length)) + 857] = ceil32(arg5.length) + 224
        mem[arg5.length + (2 * ceil32(arg5.length)) + 889 len ceil32(ceil32(arg5.length)) + 7] = mem[arg5.length + ceil32(arg5.length) + 501 len ceil32(ceil32(arg5.length)) + 7]
        if not ceil32(arg5.length) + 224 % 32:
            mem[arg5.length + (2 * ceil32(arg5.length)) + 725] = (2 * ceil32(arg5.length)) + 356
            mem[(4 * ceil32(arg5.length)) + arg5.length + 1113] = 32
            mem[(4 * ceil32(arg5.length)) + arg5.length + 1145] = (2 * ceil32(arg5.length)) + 356
            mem[(4 * ceil32(arg5.length)) + arg5.length + 1177 len floor32((2 * ceil32(arg5.length)) + 387)] = unknown_0xa9059cbb(?????), address(sha3(0, Mask(160, 96, this.address) >> 96, _74, 0xfa3da1081bc86587310fce8f3a5309785fc567b9b20875900cb289302d6bfa97)) << 64, 0, arg7, 96, ceil32(arg5.length) + 224, mem[arg5.length + ceil32(arg5.length) + 501 len ceil32(ceil32(arg5.length)) + 7], mem[arg5.length + (2 * ceil32(arg5.length)) + ceil32(ceil32(arg5.length)) + 896 len floor32((2 * ceil32(arg5.length)) + 387) + -ceil32(ceil32(arg5.length)) - 139]
            if not (2 * ceil32(arg5.length)) + 356 % 32:
                return memory
                  from (4 * ceil32(arg5.length)) + arg5.length + 1113
                   len (12 * ceil32(arg5.length)) + 420
            mem[floor32((2 * ceil32(arg5.length)) + 356) + (4 * ceil32(arg5.length)) + arg5.length + 1177] = Mask(8 * floor32((2 * ceil32(arg5.length)) + 387) + -floor32((2 * ceil32(arg5.length)) + 356) + ((2 * ceil32(arg5.length)) + 356 % 32) - 32, -(8 * floor32((2 * ceil32(arg5.length)) + 387)) + 256, mem[arg5.length + (2 * ceil32(arg5.length)) + ceil32(ceil32(arg5.length)) + 896 len floor32((2 * ceil32(arg5.length)) + 387) + -ceil32(ceil32(arg5.length)) - 139]) << (8 * floor32((2 * ceil32(arg5.length)) + 387)) - 256, mem[(4 * ceil32(arg5.length)) + arg5.length + floor32((2 * ceil32(arg5.length)) + 387) + 1177 len floor32((2 * ceil32(arg5.length)) + 356) + -floor32((2 * ceil32(arg5.length)) + 387) + 32]
            return memory
              from (4 * ceil32(arg5.length)) + arg5.length + 1113
               len floor32((2 * ceil32(arg5.length)) + 356) + (7 * ceil32(arg5.length)) + 96
        mem[floor32(ceil32(arg5.length) + 224) + arg5.length + (2 * ceil32(arg5.length)) + 889] = mem[floor32(ceil32(arg5.length) + 224) + arg5.length + (2 * ceil32(arg5.length)) + -(ceil32(arg5.length) + 224 % 32) + 921 len ceil32(arg5.length) + 224 % 32]
        mem[arg5.length + (2 * ceil32(arg5.length)) + 725] = floor32(ceil32(arg5.length) + 224) + ceil32(arg5.length) + 164
        mem[floor32(ceil32(arg5.length) + 224) + arg5.length + (2 * ceil32(arg5.length)) + 921] = 32
        mem[floor32(ceil32(arg5.length) + 224) + arg5.length + (2 * ceil32(arg5.length)) + 953] = floor32(ceil32(arg5.length) + 224) + ceil32(arg5.length) + 164
        mem[floor32(ceil32(arg5.length) + 224) + arg5.length + (2 * ceil32(arg5.length)) + 985 len floor32(floor32(ceil32(arg5.length) + 224) + ceil32(arg5.length) + 195)] = unknown_0xa9059cbb(?????), address(sha3(0, Mask(160, 96, this.address) >> 96, _74, 0xfa3da1081bc86587310fce8f3a5309785fc567b9b20875900cb289302d6bfa97)) << 64, 0, arg7, 96, ceil32(arg5.length) + 224, mem[arg5.length + ceil32(arg5.length) + 501 len ceil32(ceil32(arg5.length)) + 7], mem[arg5.length + (2 * ceil32(arg5.length)) + ceil32(ceil32(arg5.length)) + 896 len floor32(floor32(ceil32(arg5.length) + 224) + ceil32(arg5.length) + 195) + -ceil32(ceil32(arg5.length)) - 139]
        if not floor32(ceil32(arg5.length) + 224) + ceil32(arg5.length) + 164 % 32:
            return memory
              from floor32(ceil32(arg5.length) + 224) + arg5.length + (2 * ceil32(arg5.length)) + 921
               len (2 * floor32(ceil32(arg5.length) + 224)) + (6 * ceil32(arg5.length)) + 228
        mem[floor32(floor32(ceil32(arg5.length) + 224) + ceil32(arg5.length) + 164) + floor32(ceil32(arg5.length) + 224) + arg5.length + (2 * ceil32(arg5.length)) + 985] = mem[floor32(floor32(ceil32(arg5.length) + 224) + ceil32(arg5.length) + 164) + floor32(ceil32(arg5.length) + 224) + arg5.length + (2 * ceil32(arg5.length)) + -(floor32(ceil32(arg5.length) + 224) + ceil32(arg5.length) + 164 % 32) + 1017 len floor32(ceil32(arg5.length) + 224) + ceil32(arg5.length) + 164 % 32]
        return Array(len=floor32(ceil32(arg5.length) + 224) + ceil32(arg5.length) + 164, data=mem[floor32(ceil32(arg5.length) + 224) + arg5.length + (2 * ceil32(arg5.length)) + 985 len floor32(floor32(ceil32(arg5.length) + 224) + ceil32(arg5.length) + 164) + 32]), 
    mem[floor32(arg5.length) + ceil32(arg5.length) + 352] = mem[floor32(arg5.length) + ceil32(arg5.length) + -(arg5.length % 32) + 384 len arg5.length % 32]
    mem[ceil32(arg5.length) + 128] = floor32(arg5.length) + 224
    _78 = sha3(mem[ceil32(arg5.length) + 160 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]])
    mem[floor32(arg5.length) + ceil32(arg5.length) + 533] = arg1
    mem[floor32(arg5.length) + ceil32(arg5.length) + 565] = arg2
    mem[floor32(arg5.length) + ceil32(arg5.length) + 597] = arg3
    mem[floor32(arg5.length) + ceil32(arg5.length) + 629] = arg4
    mem[floor32(arg5.length) + ceil32(arg5.length) + 693] = arg6
    mem[floor32(arg5.length) + ceil32(arg5.length) + 661] = 192
    mem[floor32(arg5.length) + ceil32(arg5.length) + 725] = arg5.length
    mem[floor32(arg5.length) + ceil32(arg5.length) + 757 len arg5.length] = arg5[all]
    mem[floor32(arg5.length) + ceil32(arg5.length) + arg5.length + 757] = 0
    mem[floor32(arg5.length) + (2 * ceil32(arg5.length)) + 793] = address(sha3(0, Mask(160, 96, this.address) >> 96, _78, 0xfa3da1081bc86587310fce8f3a5309785fc567b9b20875900cb289302d6bfa97))
    mem[floor32(arg5.length) + (2 * ceil32(arg5.length)) + 825] = arg7
    mem[floor32(arg5.length) + (2 * ceil32(arg5.length)) + 857] = 96
    mem[floor32(arg5.length) + (2 * ceil32(arg5.length)) + 889] = ceil32(arg5.length) + 224
    mem[floor32(arg5.length) + (2 * ceil32(arg5.length)) + 921 len ceil32(ceil32(arg5.length)) + 7] = mem[floor32(arg5.length) + ceil32(arg5.length) + 533 len ceil32(ceil32(arg5.length)) + 7]
    if not ceil32(arg5.length) + 224 % 32:
        mem[floor32(arg5.length) + (2 * ceil32(arg5.length)) + 757] = (2 * ceil32(arg5.length)) + 356
        mem[(4 * ceil32(arg5.length)) + floor32(arg5.length) + 1145] = 32
        mem[(4 * ceil32(arg5.length)) + floor32(arg5.length) + 1177] = (2 * ceil32(arg5.length)) + 356
        mem[(4 * ceil32(arg5.length)) + floor32(arg5.length) + 1209 len floor32((2 * ceil32(arg5.length)) + 387)] = unknown_0xa9059cbb(?????), address(sha3(0, Mask(160, 96, this.address) >> 96, _78, 0xfa3da1081bc86587310fce8f3a5309785fc567b9b20875900cb289302d6bfa97)) << 64, 0, arg7, 96, ceil32(arg5.length) + 224, mem[floor32(arg5.length) + ceil32(arg5.length) + 533 len ceil32(ceil32(arg5.length)) + 7], mem[floor32(arg5.length) + (2 * ceil32(arg5.length)) + ceil32(ceil32(arg5.length)) + 928 len floor32((2 * ceil32(arg5.length)) + 387) + -ceil32(ceil32(arg5.length)) - 139]
        if not (2 * ceil32(arg5.length)) + 356 % 32:
            return memory
              from (4 * ceil32(arg5.length)) + floor32(arg5.length) + 1145
               len (12 * ceil32(arg5.length)) + 420
        mem[floor32((2 * ceil32(arg5.length)) + 356) + (4 * ceil32(arg5.length)) + floor32(arg5.length) + 1209] = Mask(8 * floor32((2 * ceil32(arg5.length)) + 387) + -floor32((2 * ceil32(arg5.length)) + 356) + ((2 * ceil32(arg5.length)) + 356 % 32) - 32, -(8 * floor32((2 * ceil32(arg5.length)) + 387)) + 256, mem[floor32(arg5.length) + (2 * ceil32(arg5.length)) + ceil32(ceil32(arg5.length)) + 928 len floor32((2 * ceil32(arg5.length)) + 387) + -ceil32(ceil32(arg5.length)) - 139]) << (8 * floor32((2 * ceil32(arg5.length)) + 387)) - 256, mem[(4 * ceil32(arg5.length)) + floor32(arg5.length) + floor32((2 * ceil32(arg5.length)) + 387) + 1209 len floor32((2 * ceil32(arg5.length)) + 356) + -floor32((2 * ceil32(arg5.length)) + 387) + 32]
        return memory
          from (4 * ceil32(arg5.length)) + floor32(arg5.length) + 1145
           len floor32((2 * ceil32(arg5.length)) + 356) + (7 * ceil32(arg5.length)) + 96
    mem[floor32(ceil32(arg5.length) + 224) + floor32(arg5.length) + (2 * ceil32(arg5.length)) + 921] = mem[floor32(ceil32(arg5.length) + 224) + floor32(arg5.length) + (2 * ceil32(arg5.length)) + -(ceil32(arg5.length) + 224 % 32) + 953 len ceil32(arg5.length) + 224 % 32]
    mem[floor32(arg5.length) + (2 * ceil32(arg5.length)) + 757] = floor32(ceil32(arg5.length) + 224) + ceil32(arg5.length) + 164
    mem[floor32(ceil32(arg5.length) + 224) + floor32(arg5.length) + (2 * ceil32(arg5.length)) + 953] = 32
    mem[floor32(ceil32(arg5.length) + 224) + floor32(arg5.length) + (2 * ceil32(arg5.length)) + 985] = floor32(ceil32(arg5.length) + 224) + ceil32(arg5.length) + 164
    mem[floor32(ceil32(arg5.length) + 224) + floor32(arg5.length) + (2 * ceil32(arg5.length)) + 1017 len floor32(floor32(ceil32(arg5.length) + 224) + ceil32(arg5.length) + 195)] = unknown_0xa9059cbb(?????), address(sha3(0, Mask(160, 96, this.address) >> 96, _78, 0xfa3da1081bc86587310fce8f3a5309785fc567b9b20875900cb289302d6bfa97)) << 64, 0, arg7, 96, ceil32(arg5.length) + 224, mem[floor32(arg5.length) + ceil32(arg5.length) + 533 len ceil32(ceil32(arg5.length)) + 7], mem[floor32(arg5.length) + (2 * ceil32(arg5.length)) + ceil32(ceil32(arg5.length)) + 928 len floor32(floor32(ceil32(arg5.length) + 224) + ceil32(arg5.length) + 195) + -ceil32(ceil32(arg5.length)) - 139]
    if not floor32(ceil32(arg5.length) + 224) + ceil32(arg5.length) + 164 % 32:
        return memory
          from floor32(ceil32(arg5.length) + 224) + floor32(arg5.length) + (2 * ceil32(arg5.length)) + 953
           len (6 * ceil32(arg5.length)) + floor32(ceil32(arg5.length) + 224) + 228
    mem[floor32(floor32(ceil32(arg5.length) + 224) + ceil32(arg5.length) + 164) + floor32(ceil32(arg5.length) + 224) + floor32(arg5.length) + (2 * ceil32(arg5.length)) + 1017] = mem[floor32(floor32(ceil32(arg5.length) + 224) + ceil32(arg5.length) + 164) + floor32(ceil32(arg5.length) + 224) + floor32(arg5.length) + (2 * ceil32(arg5.length)) + -(floor32(ceil32(arg5.length) + 224) + ceil32(arg5.length) + 164 % 32) + 1049 len floor32(ceil32(arg5.length) + 224) + ceil32(arg5.length) + 164 % 32]
    return Array(len=floor32(ceil32(arg5.length) + 224) + ceil32(arg5.length) + 164, data=mem[floor32(ceil32(arg5.length) + 224) + floor32(arg5.length) + (2 * ceil32(arg5.length)) + 1017 len floor32(floor32(ceil32(arg5.length) + 224) + ceil32(arg5.length) + 164) + 32]), 
}

function depositEth(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if msg.value <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x454c696d69744f72646572436f7265236465706f7369744574683a2056414c55455f49535f,
                    mem[201 len 27]
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg1.length >= 192
    _5 = mem[128]
    _6 = mem[160]
    _7 = mem[192]
    _8 = mem[224]
    _9 = mem[256]
    require mem[256] <= 4294967296
    require mem[256] + 64 <= arg1.length + 32
    require arg1.length + 32 >= mem[mem[256] + 128] + mem[256] + 64 and mem[mem[256] + 128] <= 4294967296
    mem[ceil32(arg1.length) + 128] = mem[mem[256] + 128]
    _12 = mem[_9 + 128]
    mem[ceil32(arg1.length) + 160 len ceil32(mem[_9 + 128])] = mem[_9 + 160 len ceil32(mem[_9 + 128])]
    if not _12 % 32:
        mem[64] = _12 + ceil32(arg1.length) + 160
        if address(_6) != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            revert with 0, 
                        32,
                        44,
                        0x524c696d69744f72646572436f7265236465706f7369744574683a2057524f4e475f494e5055545f544f4b45,
                        mem[_12 + ceil32(arg1.length) + 272 len 20]
        mem[_12 + ceil32(arg1.length) + 192] = address(_5)
        mem[_12 + ceil32(arg1.length) + 224] = address(_6)
        mem[_12 + ceil32(arg1.length) + 256] = address(_7)
        mem[_12 + ceil32(arg1.length) + 288] = address(_8)
        mem[_12 + ceil32(arg1.length) + 320] = 160
        mem[_12 + ceil32(arg1.length) + 352] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        _75 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[_12 + ceil32(arg1.length) + 384 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            mem[_12 + ceil32(arg1.length) + 160] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 192
            mem[64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + _12 + ceil32(arg1.length) + 384
            _125 = sha3(mem[_12 + ceil32(arg1.length) + 192 len mem[_12 + ceil32(arg1.length) + 160]])
            if msg.value + ethDeposits[mem[_12 + ceil32(arg1.length) + 192 len mem[_12 + ceil32(arg1.length) + 160]]] < ethDeposits[mem[_12 + ceil32(arg1.length) + 192 len mem[_12 + ceil32(arg1.length) + 160]]]:
                _141 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + _12 + ceil32(arg1.length) + 384
                mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + _12 + ceil32(arg1.length) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + _12 + ceil32(arg1.length) + 388] = 32
                mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + _12 + ceil32(arg1.length) + 420] = 27
                mem[_141 + 68] = 'SafeMath: addition overflow'
                revert with memory
                  from _75 + _12 + ceil32(arg1.length) + 384
                   len _141 + -_75 + -_12 + -ceil32(arg1.length) - 284
            ethDeposits[mem[_12 + ceil32(arg1.length) + 192 len mem[_12 + ceil32(arg1.length) + 160]]] += msg.value
            _146 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + _12 + ceil32(arg1.length) + 384
            mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + _12 + ceil32(arg1.length) + 384] = msg.value
            mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + _12 + ceil32(arg1.length) + 416] = 64
            mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + _12 + ceil32(arg1.length) + 448] = arg1.length
            mem[_146 + 96 len arg1.length] = arg1[all]
            mem[arg1.length + _146 + 96] = 0
            emit DepositETH(bytes32 rg1, address rg2, uint256 rg3, bytes rg4):
                            mem[_75 + _12 + ceil32(arg1.length) + 384 len _146 + -_75 + -_12 - 288],
                            _125,
                            msg.sender,
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + _12 + ceil32(arg1.length) + 384] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + _12 + ceil32(arg1.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 416 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            mem[_12 + ceil32(arg1.length) + 160] = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 224
            mem[64] = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + _12 + ceil32(arg1.length) + 416
            _134 = sha3(mem[_12 + ceil32(arg1.length) + 192 len mem[_12 + ceil32(arg1.length) + 160]])
            if msg.value + ethDeposits[mem[_12 + ceil32(arg1.length) + 192 len mem[_12 + ceil32(arg1.length) + 160]]] < ethDeposits[mem[_12 + ceil32(arg1.length) + 192 len mem[_12 + ceil32(arg1.length) + 160]]]:
                _148 = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + _12 + ceil32(arg1.length) + 416
                mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + _12 + ceil32(arg1.length) + 416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + _12 + ceil32(arg1.length) + 420] = 32
                mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + _12 + ceil32(arg1.length) + 452] = 27
                mem[_148 + 68] = 'SafeMath: addition overflow'
                revert with memory
                  from floor32(_75) + _12 + ceil32(arg1.length) + 416
                   len _148 + -floor32(_75) + -_12 + -ceil32(arg1.length) - 316
            ethDeposits[mem[_12 + ceil32(arg1.length) + 192 len mem[_12 + ceil32(arg1.length) + 160]]] += msg.value
            _156 = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + _12 + ceil32(arg1.length) + 416
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + _12 + ceil32(arg1.length) + 416] = msg.value
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + _12 + ceil32(arg1.length) + 448] = 64
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + _12 + ceil32(arg1.length) + 480] = arg1.length
            mem[_156 + 96 len arg1.length] = arg1[all]
            mem[arg1.length + _156 + 96] = 0
            emit DepositETH(bytes32 rg1, address rg2, uint256 rg3, bytes rg4):
                            mem[floor32(_75) + _12 + ceil32(arg1.length) + 416 len _156 + -floor32(_75) + -_12 - 320],
                            _134,
                            msg.sender,
    else:
        mem[floor32(_12) + ceil32(arg1.length) + 160] = mem[floor32(_12) + ceil32(arg1.length) + -(_12 % 32) + 192 len _12 % 32]
        mem[64] = floor32(_12) + ceil32(arg1.length) + 192
        if address(_6) != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            revert with 0, 
                        32,
                        44,
                        0x524c696d69744f72646572436f7265236465706f7369744574683a2057524f4e475f494e5055545f544f4b45,
                        mem[floor32(_12) + ceil32(arg1.length) + 304 len 20]
        mem[floor32(_12) + ceil32(arg1.length) + 224] = address(_5)
        mem[floor32(_12) + ceil32(arg1.length) + 256] = address(_6)
        mem[floor32(_12) + ceil32(arg1.length) + 288] = address(_7)
        mem[floor32(_12) + ceil32(arg1.length) + 320] = address(_8)
        mem[floor32(_12) + ceil32(arg1.length) + 352] = 160
        mem[floor32(_12) + ceil32(arg1.length) + 384] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        _80 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[floor32(_12) + ceil32(arg1.length) + 416 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            mem[64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(_12) + ceil32(arg1.length) + 416
            _129 = sha3(mem[floor32(_12) + ceil32(arg1.length) + 224 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 192])
            if msg.value + ethDeposits[mem[floor32(_12) + ceil32(arg1.length) + 224 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 192]] < ethDeposits[mem[floor32(_12) + ceil32(arg1.length) + 224 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 192]]:
                _143 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(_12) + ceil32(arg1.length) + 416
                mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(_12) + ceil32(arg1.length) + 416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(_12) + ceil32(arg1.length) + 420] = 32
                mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(_12) + ceil32(arg1.length) + 452] = 27
                mem[_143 + 68] = 'SafeMath: addition overflow'
                revert with memory
                  from _80 + floor32(_12) + ceil32(arg1.length) + 416
                   len _143 + -_80 + -floor32(_12) + -ceil32(arg1.length) - 316
            ethDeposits[mem[floor32(_12) + ceil32(arg1.length) + 224 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 192]] += msg.value
            _151 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(_12) + ceil32(arg1.length) + 416
            mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(_12) + ceil32(arg1.length) + 416] = msg.value
            mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(_12) + ceil32(arg1.length) + 448] = 64
            mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(_12) + ceil32(arg1.length) + 480] = arg1.length
            mem[_151 + 96 len arg1.length] = arg1[all]
            mem[arg1.length + _151 + 96] = 0
            emit DepositETH(bytes32 rg1, address rg2, uint256 rg3, bytes rg4):
                            mem[_80 + floor32(_12) + ceil32(arg1.length) + 416 len _151 + -_80 + -floor32(_12) - 320],
                            _129,
                            msg.sender,
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(_12) + ceil32(arg1.length) + 416] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(_12) + ceil32(arg1.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 448 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            mem[64] = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(_12) + ceil32(arg1.length) + 448
            _138 = sha3(mem[floor32(_12) + ceil32(arg1.length) + 224 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 224])
            if msg.value + ethDeposits[mem[floor32(_12) + ceil32(arg1.length) + 224 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 224]] < ethDeposits[mem[floor32(_12) + ceil32(arg1.length) + 224 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 224]]:
                _153 = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(_12) + ceil32(arg1.length) + 448
                mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(_12) + ceil32(arg1.length) + 448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(_12) + ceil32(arg1.length) + 452] = 32
                mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(_12) + ceil32(arg1.length) + 484] = 27
                mem[_153 + 68] = 'SafeMath: addition overflow'
                revert with memory
                  from floor32(_80) + floor32(_12) + ceil32(arg1.length) + 448
                   len _153 + -floor32(_80) + -floor32(_12) + -ceil32(arg1.length) - 348
            ethDeposits[mem[floor32(_12) + ceil32(arg1.length) + 224 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 224]] += msg.value
            _159 = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(_12) + ceil32(arg1.length) + 448
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(_12) + ceil32(arg1.length) + 448] = msg.value
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(_12) + ceil32(arg1.length) + 480] = 64
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(_12) + ceil32(arg1.length) + 512] = arg1.length
            mem[_159 + 96 len arg1.length] = arg1[all]
            mem[arg1.length + _159 + 96] = 0
            emit DepositETH(bytes32 rg1, address rg2, uint256 rg3, bytes rg4):
                            mem[floor32(_80) + floor32(_12) + ceil32(arg1.length) + 448 len _159 + -floor32(_80) + -floor32(_12) - 352],
                            _138,
                            msg.sender,
}



}
