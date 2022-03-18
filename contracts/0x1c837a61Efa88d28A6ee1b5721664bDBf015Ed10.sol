contract main {




// =====================  Runtime code  =====================


address tokenAddress;
uint256 merkleRoot;
mapping of uint256 sub_b74ec704;
mapping of uint256 stor3;

function merkleRoot() payable {
    return merkleRoot
}

function sub_b74ec704(?) payable {
    require calldata.size - 4 >= 32
    return sub_b74ec704[arg1]
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function isClaimed(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return (1 << uint8(arg1) and stor3[Mask(248, 8, arg1)] == 1 << uint8(arg1))
}

function claim(uint256 arg1, address arg2, uint256 arg3, bytes32[] arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[0] = arg1 / 256
    mem[32] = 3
    if 1 << uint8(arg1) and stor3[Mask(248, 8, arg1)] == 1 << uint8(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe4d65726b6c654469737472696275746f723a2044726f7020616c726561647920636c61696d6564,
                    mem[204 len 24]
    mem[128] = arg1
    mem[160] = address(arg2)
    mem[180] = arg3
    mem[96] = 84
    mem[64] = (32 * arg4.length) + 244
    mem[212] = arg4.length
    mem[244 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 244] = 0
    idx = 0
    s = arg1
    t = 0
    while uint16(idx) < arg4.length:
        require uint16(idx) < mem[212]
        if 1 == bool(s):
            mem[mem[64] + 32] = mem[(32 * uint16(idx)) + 244]
            mem[mem[64] + 64] = t + sha3(mem[128 len 84])
            _44 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            idx = idx + 1
            s = s / 2
            t = sha3(mem[_44 + 32 len mem[_44]])
            continue 
        _37 = mem[(32 * uint16(idx)) + 244]
        mem[mem[64] + 32] = t + sha3(mem[128 len 84])
        mem[mem[64] + 64] = _37
        _39 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        idx = idx + 1
        s = s / 2
        t = sha3(mem[_39 + 32 len mem[_39]])
        continue 
    if merkleRoot != t:
        revert with 0, 32, 33, 0x2e4d65726b6c654469737472696275746f723a20496e76616c69642070726f6f66, mem[mem[64] + 101 len 31]
    stor3[Mask(248, 8, arg1)] = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 35, 0x2e4d65726b6c654469737472696275746f723a205472616e73666572206661696c6564, mem[mem[64] + 103 len 29]
    emit Claimed(arg1, address(arg2), arg3);
}



}
