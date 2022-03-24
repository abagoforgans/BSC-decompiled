contract main {




// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
    revert
}

function multiSend(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128] = 'multisend.guard.bytes32'
    if stor0 == sha3(Mask(184, -(8 * ceil32(arg1.length) + -arg1.length + 23) + 256, 0) >> -(8 * ceil32(arg1.length) + -arg1.length + 23) + 256):
        revert with 0, 
                    32,
                    48,
                    0xfe4d756c746953656e642073686f756c64206f6e6c792062652063616c6c6564207669612064656c656761746563616c,
                    mem[ceil32(arg1.length) + 244 len 16]
    idx = 32
    while idx < arg1.length:
        if not Mask(256, -248, mem[idx + 96]):
            call address(mem[idx + 97]) >> 96.mem[idx + 181 len 4] with:
               value mem[idx + 117] wei
                 gas gas_remaining wei
                args mem[idx + 185 len mem[idx + 149] - 4]
            require ext_call.success
        else:
            require uint8(mem[idx + 96]) >> 248 == 1
            delegate (address(mem[idx + 97]) >> 96).mem[idx + 181 len 4] with:
                 gas gas_remaining wei
                args mem[idx + 185 len mem[idx + 149] - 4]
            require delegate.return_code
        idx = idx + mem[idx + 149] + 85
        continue 
}



}
