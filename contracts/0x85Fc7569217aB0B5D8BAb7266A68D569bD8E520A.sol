contract main {




// =====================  Runtime code  =====================


#
#  - sub_d2b42a6c(?)
#
address stor0;
address stor1;
address sub_d3aa8cdaAddress;
address stor3;
mapping of uint8 stor5;
address stor6;

function sub_a61f4152(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor5[arg1])
}

function sub_d3aa8cda(?) {
    return sub_d3aa8cdaAddress
}

function sub_0783a3f6(?) {
    require calldata.size - 4 >= 96
    require arg1 == uint64(arg1)
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    if stor5[address(arg2)]:
        revert with 0, 'B'
    if uint64(arg1) < block.timestamp:
        revert with 0, 'C'
    mem[ceil32(ceil32(arg3.length)) + 129] = address(this.address)
    mem[ceil32(ceil32(arg3.length)) + 149] = 0xfa78440892af0715dbaff607427ef815f026e018b0021a99f8bd36f3bfba0241
    mem[ceil32(ceil32(arg3.length)) + 181] = address(msg.sender)
    mem[ceil32(ceil32(arg3.length)) + 201] = 0x703cd800000000000000000000000000000000000000000000000000000000
    mem[ceil32(ceil32(arg3.length)) + 205] = arg1 << 192
    mem[ceil32(ceil32(arg3.length)) + 213] = address(arg2)
    mem[ceil32(ceil32(arg3.length)) + 97] = 104
    mem[ceil32(ceil32(arg3.length)) + 265] = sha3(this.address, 0xfa78440892af0715dbaff607427ef815f026e018b0021a99f8bd36f3bfba0241, msg.sender, 0, uint64(arg1), address(arg2))
    mem[ceil32(ceil32(arg3.length)) + 233] = 32
    mem[ceil32(ceil32(arg3.length)) + 297] = 64
    mem[ceil32(ceil32(arg3.length)) + 329 len 64] = 0xfe4142434445464748494a4b4c4d4e4f505152535455565758595a6162636465666768696a6b6c6d6e6f707172737475767778797a303132333435363738392b
    if 4 * 34 / 3 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(arg3.length)) + 393] = 4 * 34 / 3
    if not Mask(254, 0, 34 / 3):
        idx = ceil32(ceil32(arg3.length)) + 233
        s = ceil32(ceil32(arg3.length)) + 425
        while idx < ceil32(ceil32(arg3.length)) + 265:
            _109 = mem[idx + 3]
            mem[s len 8] = mem[ceil32(ceil32(arg3.length)) + (Mask(6, 18, mem[idx + 3]) >> 18) + 298]
            mem[s + 1 len 8] = mem[ceil32(ceil32(arg3.length)) + (Mask(6, 12, _109) >> 12) + 298]
            mem[s + 2 len 8] = mem[ceil32(ceil32(arg3.length)) + (Mask(6, 6, _109) >> 6) + 298]
            mem[s + 3 len 8] = mem[ceil32(ceil32(arg3.length)) + (_109 % 64) + 298]
            idx = idx + 3
            s = s + 4
            continue 
        mem[ceil32(ceil32(arg3.length)) + 468 len 8] = 61
        mem[0] = address(arg2)
        mem[32] = 5
        stor5[address(arg2)] = 1
        if arg3.length != 65:
            revert with 0, 'invalid signature length'
        _144 = mem[128]
        _145 = mem[160]
        mem[64] = ceil32(ceil32(arg3.length)) + ceil32(4 * 34 / 3) + 489
        mem[ceil32(ceil32(arg3.length)) + ceil32(4 * 34 / 3) + 457] = 0x19457468657265756d205369676e6564204d6573736167653a0a303030303030
        idx = 100000
        while idx:
            if not idx:
                revert with 0, 18
            if 44 / idx:
                if 44 / idx and idx > -1 / 44 / idx:
                    revert with 0, 17
                if 44 < 44 / idx * idx:
                    revert with 0, 17
                if 44 / idx > -49:
                    revert with 0, 17
                if ceil32(ceil32(arg3.length)) + ceil32(4 * 34 / 3) + 482 == -1:
                    revert with 0, 17
                mem[ceil32(ceil32(arg3.length)) + ceil32(4 * 34 / 3) + 483 len 8] = (44 / idx) + 48
            idx = idx / 10
            continue 
        mem[ceil32(ceil32(arg3.length)) + ceil32(4 * 34 / 3) + 425] = 27
        mem[mem[64] + 32] = mem[ceil32(ceil32(arg3.length)) + ceil32(4 * 34 / 3) + 457]
        mem[mem[64] + 59] = 0
        mem[mem[64] + 59 len 64] = mem[ceil32(ceil32(arg3.length)) + 425 len 43], 0, mem[ceil32(ceil32(arg3.length)) + 476 len 13]
        mem[mem[64] + 103] = 0
        _832 = mem[64]
        mem[mem[64]] = 71
        mem[64] = mem[64] + 103
        signer = erecover(sha3(mem[_832 + 32 len mem[_832]]), 0, _144, _145) 
    else:
        mem[ceil32(ceil32(arg3.length)) + 425 len 4 * 34 / 3] = call.data[calldata.size len 4 * 34 / 3]
        idx = ceil32(ceil32(arg3.length)) + 233
        s = ceil32(ceil32(arg3.length)) + 425
        while idx < ceil32(ceil32(arg3.length)) + 265:
            _115 = mem[idx + 3]
            mem[s len 8] = mem[ceil32(ceil32(arg3.length)) + (Mask(6, 18, mem[idx + 3]) >> 18) + 298]
            mem[s + 1 len 8] = mem[ceil32(ceil32(arg3.length)) + (Mask(6, 12, _115) >> 12) + 298]
            mem[s + 2 len 8] = mem[ceil32(ceil32(arg3.length)) + (Mask(6, 6, _115) >> 6) + 298]
            mem[s + 3 len 8] = mem[ceil32(ceil32(arg3.length)) + (_115 % 64) + 298]
            idx = idx + 3
            s = s + 4
            continue 
        mem[ceil32(ceil32(arg3.length)) + 468 len 8] = 61
        mem[0] = address(arg2)
        mem[32] = 5
        stor5[address(arg2)] = 1
        if arg3.length != 65:
            revert with 0, 'invalid signature length'
        _153 = mem[128]
        _154 = mem[160]
        mem[64] = ceil32(ceil32(arg3.length)) + ceil32(4 * 34 / 3) + 489
        mem[ceil32(ceil32(arg3.length)) + ceil32(4 * 34 / 3) + 457] = 0x19457468657265756d205369676e6564204d6573736167653a0a303030303030
        idx = 100000
        while idx:
            if not idx:
                revert with 0, 18
            if 44 / idx:
                if 44 / idx and idx > -1 / 44 / idx:
                    revert with 0, 17
                if 44 < 44 / idx * idx:
                    revert with 0, 17
                if 44 / idx > -49:
                    revert with 0, 17
                if ceil32(ceil32(arg3.length)) + ceil32(4 * 34 / 3) + 482 == -1:
                    revert with 0, 17
                mem[ceil32(ceil32(arg3.length)) + ceil32(4 * 34 / 3) + 483 len 8] = (44 / idx) + 48
            idx = idx / 10
            continue 
        mem[ceil32(ceil32(arg3.length)) + ceil32(4 * 34 / 3) + 425] = 27
        mem[mem[64] + 32] = mem[ceil32(ceil32(arg3.length)) + ceil32(4 * 34 / 3) + 457]
        mem[mem[64] + 59] = 0
        mem[mem[64] + 59 len 64] = mem[ceil32(ceil32(arg3.length)) + 425 len 43], 0, mem[ceil32(ceil32(arg3.length)) + 476 len 13]
        mem[mem[64] + 103] = 0
        _868 = mem[64]
        mem[mem[64]] = 71
        mem[64] = mem[64] + 103
        signer = erecover(sha3(mem[_868 + 32 len mem[_868]]), 0, _153, _154) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != stor6:
        revert with 0, 'TRUMP 2024: SAVE AMERICA AGAIN!!!'
    selfdestruct(msg.sender)
}

function _fallback() {
    revert with 0, '2024 VOTE TRUMP!!!'
}

function sub_578e556c(?) {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == uint8(arg2)
    mem[ceil32(ceil32(arg1.length)) + 129] = 0x19457468657265756d205369676e6564204d6573736167653a0a303030303030
    if arg1.length > 999999:
        revert with 0, '0x01'
    idx = 100000
    while idx:
        if not idx:
            revert with 0, 18
        if arg1.length / idx:
            if arg1.length / idx and idx > -1 / arg1.length / idx:
                revert with 0, 17
            if arg1.length < arg1.length / idx * idx:
                revert with 0, 17
            if arg1.length / idx > -49:
                revert with 0, 17
            if ceil32(ceil32(arg1.length)) + 154 == -1:
                revert with 0, 17
            mem[ceil32(ceil32(arg1.length)) + 155 len 8] = (arg1.length / idx) + 48
        idx = idx / 10
        continue 
    signer = erecover(sha3(mem[ceil32(ceil32(arg1.length)) + 129 len 27], Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 27) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * arg1.length) - 256), arg2 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function sub_cee13d3a(?) {
    require calldata.size - 4 >= 96
    require arg1 == uint64(arg1)
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    if stor5[address(arg2)]:
        revert with 0, 'B'
    if uint64(arg1) < block.timestamp:
        revert with 0, 'C'
    mem[ceil32(ceil32(arg3.length)) + 129] = address(this.address)
    mem[ceil32(ceil32(arg3.length)) + 149] = 0xf6b751c16f93328968ee854298a220f06b7b9f264e1f0f5249ed3bd7114948e4
    mem[ceil32(ceil32(arg3.length)) + 181] = address(msg.sender)
    mem[ceil32(ceil32(arg3.length)) + 201] = 0x128f20600000000000000000000000000000000000000000000000000000000
    mem[ceil32(ceil32(arg3.length)) + 205] = arg1 << 192
    mem[ceil32(ceil32(arg3.length)) + 213] = address(arg2)
    mem[ceil32(ceil32(arg3.length)) + 97] = 104
    mem[ceil32(ceil32(arg3.length)) + 265] = sha3(this.address, 0xf6b751c16f93328968ee854298a220f06b7b9f264e1f0f5249ed3bd7114948e4, msg.sender, 0, uint64(arg1), address(arg2))
    mem[ceil32(ceil32(arg3.length)) + 233] = 32
    mem[ceil32(ceil32(arg3.length)) + 297] = 64
    mem[ceil32(ceil32(arg3.length)) + 329 len 64] = 0xfe4142434445464748494a4b4c4d4e4f505152535455565758595a6162636465666768696a6b6c6d6e6f707172737475767778797a303132333435363738392b
    if 4 * 34 / 3 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(arg3.length)) + 393] = 4 * 34 / 3
    if not Mask(254, 0, 34 / 3):
        idx = ceil32(ceil32(arg3.length)) + 233
        s = ceil32(ceil32(arg3.length)) + 425
        while idx < ceil32(ceil32(arg3.length)) + 265:
            _109 = mem[idx + 3]
            mem[s len 8] = mem[ceil32(ceil32(arg3.length)) + (Mask(6, 18, mem[idx + 3]) >> 18) + 298]
            mem[s + 1 len 8] = mem[ceil32(ceil32(arg3.length)) + (Mask(6, 12, _109) >> 12) + 298]
            mem[s + 2 len 8] = mem[ceil32(ceil32(arg3.length)) + (Mask(6, 6, _109) >> 6) + 298]
            mem[s + 3 len 8] = mem[ceil32(ceil32(arg3.length)) + (_109 % 64) + 298]
            idx = idx + 3
            s = s + 4
            continue 
        mem[ceil32(ceil32(arg3.length)) + 468 len 8] = 61
        mem[0] = address(arg2)
        mem[32] = 5
        stor5[address(arg2)] = 1
        if arg3.length != 65:
            revert with 0, 'invalid signature length'
        _144 = mem[128]
        _145 = mem[160]
        mem[64] = ceil32(ceil32(arg3.length)) + ceil32(4 * 34 / 3) + 489
        mem[ceil32(ceil32(arg3.length)) + ceil32(4 * 34 / 3) + 457] = 0x19457468657265756d205369676e6564204d6573736167653a0a303030303030
        idx = 100000
        while idx:
            if not idx:
                revert with 0, 18
            if 44 / idx:
                if 44 / idx and idx > -1 / 44 / idx:
                    revert with 0, 17
                if 44 < 44 / idx * idx:
                    revert with 0, 17
                if 44 / idx > -49:
                    revert with 0, 17
                if ceil32(ceil32(arg3.length)) + ceil32(4 * 34 / 3) + 482 == -1:
                    revert with 0, 17
                mem[ceil32(ceil32(arg3.length)) + ceil32(4 * 34 / 3) + 483 len 8] = (44 / idx) + 48
            idx = idx / 10
            continue 
        mem[ceil32(ceil32(arg3.length)) + ceil32(4 * 34 / 3) + 425] = 27
        mem[mem[64] + 32] = mem[ceil32(ceil32(arg3.length)) + ceil32(4 * 34 / 3) + 457]
        mem[mem[64] + 59] = 0
        mem[mem[64] + 59 len 64] = mem[ceil32(ceil32(arg3.length)) + 425 len 43], 0, mem[ceil32(ceil32(arg3.length)) + 476 len 13]
        mem[mem[64] + 103] = 0
        _1552 = mem[64]
        mem[mem[64]] = 71
        mem[64] = mem[64] + 103
        signer = erecover(sha3(mem[_1552 + 32 len mem[_1552]]), 0, _144, _145) 
    else:
        mem[ceil32(ceil32(arg3.length)) + 425 len 4 * 34 / 3] = call.data[calldata.size len 4 * 34 / 3]
        idx = ceil32(ceil32(arg3.length)) + 233
        s = ceil32(ceil32(arg3.length)) + 425
        while idx < ceil32(ceil32(arg3.length)) + 265:
            _115 = mem[idx + 3]
            mem[s len 8] = mem[ceil32(ceil32(arg3.length)) + (Mask(6, 18, mem[idx + 3]) >> 18) + 298]
            mem[s + 1 len 8] = mem[ceil32(ceil32(arg3.length)) + (Mask(6, 12, _115) >> 12) + 298]
            mem[s + 2 len 8] = mem[ceil32(ceil32(arg3.length)) + (Mask(6, 6, _115) >> 6) + 298]
            mem[s + 3 len 8] = mem[ceil32(ceil32(arg3.length)) + (_115 % 64) + 298]
            idx = idx + 3
            s = s + 4
            continue 
        mem[ceil32(ceil32(arg3.length)) + 468 len 8] = 61
        mem[0] = address(arg2)
        mem[32] = 5
        stor5[address(arg2)] = 1
        if arg3.length != 65:
            revert with 0, 'invalid signature length'
        _153 = mem[128]
        _154 = mem[160]
        mem[64] = ceil32(ceil32(arg3.length)) + ceil32(4 * 34 / 3) + 489
        mem[ceil32(ceil32(arg3.length)) + ceil32(4 * 34 / 3) + 457] = 0x19457468657265756d205369676e6564204d6573736167653a0a303030303030
        idx = 100000
        while idx:
            if not idx:
                revert with 0, 18
            if 44 / idx:
                if 44 / idx and idx > -1 / 44 / idx:
                    revert with 0, 17
                if 44 < 44 / idx * idx:
                    revert with 0, 17
                if 44 / idx > -49:
                    revert with 0, 17
                if ceil32(ceil32(arg3.length)) + ceil32(4 * 34 / 3) + 482 == -1:
                    revert with 0, 17
                mem[ceil32(ceil32(arg3.length)) + ceil32(4 * 34 / 3) + 483 len 8] = (44 / idx) + 48
            idx = idx / 10
            continue 
        mem[ceil32(ceil32(arg3.length)) + ceil32(4 * 34 / 3) + 425] = 27
        mem[mem[64] + 32] = mem[ceil32(ceil32(arg3.length)) + ceil32(4 * 34 / 3) + 457]
        mem[mem[64] + 59] = 0
        mem[mem[64] + 59 len 64] = mem[ceil32(ceil32(arg3.length)) + 425 len 43], 0, mem[ceil32(ceil32(arg3.length)) + 476 len 13]
        mem[mem[64] + 103] = 0
        _1588 = mem[64]
        mem[mem[64]] = 71
        mem[64] = mem[64] + 103
        signer = erecover(sha3(mem[_1588 + 32 len mem[_1588]]), 0, _153, _154) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != stor6:
        revert with 0, 'TRUMP 2024: SAVE AMERICA AGAIN!!!'
    require ext_code.size(sub_d3aa8cdaAddress)
    call sub_d3aa8cdaAddress.setFee(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 10, 10, 0, 0
    if not ext_call.success:
        revert with 0, 'K'
    require ext_code.size(sub_d3aa8cdaAddress)
    call sub_d3aa8cdaAddress.0x646cd202 with:
         gas gas_remaining wei
        args 9, 9999999999
    if not ext_call.success:
        revert with 0, 'L'
    require ext_code.size(sub_d3aa8cdaAddress)
    call sub_d3aa8cdaAddress.setFee(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 9, 8, 0, 0
    if not ext_call.success:
        revert with 0, 'M'
}

function sub_637ce772(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == uint64(arg2)
    require arg3 == address(arg3)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[ceil32(ceil32(arg4.length)) + 129] = 'NtQbZL36EfT8sMphyAwYLpac'
    mem[ceil32(ceil32(arg4.length)) + 153] = address(arg1)
    mem[ceil32(ceil32(arg4.length)) + 97] = 44
    if stor5[address(arg3)]:
        revert with 0, 'B'
    if uint64(arg2) < block.timestamp:
        revert with 0, 'C'
    mem[ceil32(ceil32(arg4.length)) + 205] = address(this.address)
    mem[ceil32(ceil32(arg4.length)) + 225] = sha3('NtQbZL36EfT8sMphyAwYLpac', address(arg1))
    mem[ceil32(ceil32(arg4.length)) + 257] = address(msg.sender)
    mem[ceil32(ceil32(arg4.length)) + 277] = 0x46c8f0900000000000000000000000000000000000000000000000000000000
    mem[ceil32(ceil32(arg4.length)) + 281] = arg2 << 192
    mem[ceil32(ceil32(arg4.length)) + 289] = address(arg3)
    mem[ceil32(ceil32(arg4.length)) + 173] = 104
    mem[ceil32(ceil32(arg4.length)) + 341] = sha3(this.address, sha3('NtQbZL36EfT8sMphyAwYLpac', address(arg1)), msg.sender, 0, uint64(arg2), address(arg3))
    mem[ceil32(ceil32(arg4.length)) + 309] = 32
    mem[ceil32(ceil32(arg4.length)) + 373] = 64
    mem[ceil32(ceil32(arg4.length)) + 405 len 64] = 0xfe4142434445464748494a4b4c4d4e4f505152535455565758595a6162636465666768696a6b6c6d6e6f707172737475767778797a303132333435363738392b
    if 4 * 34 / 3 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(arg4.length)) + 469] = 4 * 34 / 3
    if not Mask(254, 0, 34 / 3):
        idx = ceil32(ceil32(arg4.length)) + 309
        s = ceil32(ceil32(arg4.length)) + 501
        while idx < ceil32(ceil32(arg4.length)) + 341:
            _113 = mem[idx + 3]
            mem[s len 8] = mem[ceil32(ceil32(arg4.length)) + (Mask(6, 18, mem[idx + 3]) >> 18) + 374]
            mem[s + 1 len 8] = mem[ceil32(ceil32(arg4.length)) + (Mask(6, 12, _113) >> 12) + 374]
            mem[s + 2 len 8] = mem[ceil32(ceil32(arg4.length)) + (Mask(6, 6, _113) >> 6) + 374]
            mem[s + 3 len 8] = mem[ceil32(ceil32(arg4.length)) + (_113 % 64) + 374]
            idx = idx + 3
            s = s + 4
            continue 
        mem[ceil32(ceil32(arg4.length)) + 544 len 8] = 61
        mem[0] = address(arg3)
        mem[32] = 5
        stor5[address(arg3)] = 1
        if arg4.length != 65:
            revert with 0, 'invalid signature length'
        _148 = mem[128]
        _149 = mem[160]
        mem[64] = ceil32(ceil32(arg4.length)) + ceil32(4 * 34 / 3) + 565
        mem[ceil32(ceil32(arg4.length)) + ceil32(4 * 34 / 3) + 533] = 0x19457468657265756d205369676e6564204d6573736167653a0a303030303030
        idx = 100000
        while idx:
            if not idx:
                revert with 0, 18
            if 44 / idx:
                if 44 / idx and idx > -1 / 44 / idx:
                    revert with 0, 17
                if 44 < 44 / idx * idx:
                    revert with 0, 17
                if 44 / idx > -49:
                    revert with 0, 17
                if ceil32(ceil32(arg4.length)) + ceil32(4 * 34 / 3) + 558 == -1:
                    revert with 0, 17
                mem[ceil32(ceil32(arg4.length)) + ceil32(4 * 34 / 3) + 559 len 8] = (44 / idx) + 48
            idx = idx / 10
            continue 
        mem[ceil32(ceil32(arg4.length)) + ceil32(4 * 34 / 3) + 501] = 27
        mem[mem[64] + 32] = mem[ceil32(ceil32(arg4.length)) + ceil32(4 * 34 / 3) + 533]
        mem[mem[64] + 59] = 0
        mem[mem[64] + 59 len 64] = mem[ceil32(ceil32(arg4.length)) + 501 len 43], 0, mem[ceil32(ceil32(arg4.length)) + 552 len 13]
        mem[mem[64] + 103] = 0
        _1316 = mem[64]
        mem[mem[64]] = 71
        mem[64] = mem[64] + 103
        signer = erecover(sha3(mem[_1316 + 32 len mem[_1316]]), 0, _148, _149) 
    else:
        mem[ceil32(ceil32(arg4.length)) + 501 len 4 * 34 / 3] = call.data[calldata.size len 4 * 34 / 3]
        idx = ceil32(ceil32(arg4.length)) + 309
        s = ceil32(ceil32(arg4.length)) + 501
        while idx < ceil32(ceil32(arg4.length)) + 341:
            _119 = mem[idx + 3]
            mem[s len 8] = mem[ceil32(ceil32(arg4.length)) + (Mask(6, 18, mem[idx + 3]) >> 18) + 374]
            mem[s + 1 len 8] = mem[ceil32(ceil32(arg4.length)) + (Mask(6, 12, _119) >> 12) + 374]
            mem[s + 2 len 8] = mem[ceil32(ceil32(arg4.length)) + (Mask(6, 6, _119) >> 6) + 374]
            mem[s + 3 len 8] = mem[ceil32(ceil32(arg4.length)) + (_119 % 64) + 374]
            idx = idx + 3
            s = s + 4
            continue 
        mem[ceil32(ceil32(arg4.length)) + 544 len 8] = 61
        mem[0] = address(arg3)
        mem[32] = 5
        stor5[address(arg3)] = 1
        if arg4.length != 65:
            revert with 0, 'invalid signature length'
        _157 = mem[128]
        _158 = mem[160]
        mem[64] = ceil32(ceil32(arg4.length)) + ceil32(4 * 34 / 3) + 565
        mem[ceil32(ceil32(arg4.length)) + ceil32(4 * 34 / 3) + 533] = 0x19457468657265756d205369676e6564204d6573736167653a0a303030303030
        idx = 100000
        while idx:
            if not idx:
                revert with 0, 18
            if 44 / idx:
                if 44 / idx and idx > -1 / 44 / idx:
                    revert with 0, 17
                if 44 < 44 / idx * idx:
                    revert with 0, 17
                if 44 / idx > -49:
                    revert with 0, 17
                if ceil32(ceil32(arg4.length)) + ceil32(4 * 34 / 3) + 558 == -1:
                    revert with 0, 17
                mem[ceil32(ceil32(arg4.length)) + ceil32(4 * 34 / 3) + 559 len 8] = (44 / idx) + 48
            idx = idx / 10
            continue 
        mem[ceil32(ceil32(arg4.length)) + ceil32(4 * 34 / 3) + 501] = 27
        mem[mem[64] + 32] = mem[ceil32(ceil32(arg4.length)) + ceil32(4 * 34 / 3) + 533]
        mem[mem[64] + 59] = 0
        mem[mem[64] + 59 len 64] = mem[ceil32(ceil32(arg4.length)) + 501 len 43], 0, mem[ceil32(ceil32(arg4.length)) + 552 len 13]
        mem[mem[64] + 103] = 0
        _1352 = mem[64]
        mem[mem[64]] = 71
        mem[64] = mem[64] + 103
        signer = erecover(sha3(mem[_1352 + 32 len mem[_1352]]), 0, _157, _158) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != stor6:
        revert with 0, 'TRUMP 2024: SAVE AMERICA AGAIN!!!'
    sub_d3aa8cdaAddress = address(arg1)
    staticcall stor0.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall stor1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    stor3 = ext_call.return_data[12 len 20]
}



}
