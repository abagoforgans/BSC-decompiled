contract main {




// =====================  Runtime code  =====================


uint256 gasFee;
array of struct stor1;
array of uint256 stor2;
array of uint256 stor3;
address stor4;
address stor5;

function gasFee() {
    return gasFee
}

function processRefunds() {
    # nil
}

function _fallback() payable {
    revert
}

function sub_2d63c712(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg2.length) + 128 > test266151307() or ceil32(arg2.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 160] = address(msg.sender)
    mem[ceil32(arg2.length) + 180] = address(arg1)
    mem[ceil32(arg2.length) + 200 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(arg2.length) + arg2.length + 200] = 0
    mem[ceil32(arg2.length) + 128] = arg2.length + 40
    mem[ceil32(arg2.length) + arg2.length + 200] = sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
    return memory
      from ceil32(arg2.length) + arg2.length + 200
       len 32
}

function sub_d2ca6d8e(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
        revert with 'NH{q', 65
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require msg.sender == stor4
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 1
        _109 = sha3(mem[(32 * idx) + 128], 1)
        _110 = mem[64]
        mem[64] = mem[64] + 128
        mem[_110] = stor1[mem[(32 * idx) + 128]].field_0
        mem[_110 + 32] = stor1[_109].field_0
        mem[_110 + 64] = stor2[_109]
        mem[_110 + 96] = stor3[_109]
        if stor1[_109].field_0:
            _112 = mem[64]
            require ext_code.size(stor5)
            staticcall stor5.WETH() with:
                    gas gas_remaining wei
            mem[mem[64] + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if 0 >= mem[_112]:
                revert with 'NH{q', 50
            mem[_112 + 32] = ext_call.return_data[12 len 20]
            if 1 >= mem[_112]:
                revert with 'NH{q', 50
            mem[_112 + 64] = stor1[_109].field_0
            emit 0x2047ffa9: stor1[_109].field_0, mem[_110 + 12 len 20]
            _125 = mem[_110]
            mem[_112 + ceil32(return_data.size) + 96] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
            mem[_112 + ceil32(return_data.size) + 100] = 1
            mem[_112 + ceil32(return_data.size) + 132] = 128
            mem[_112 + ceil32(return_data.size) + 228] = mem[_112]
            s = 0
            t = _112 + 32
            u = _112 + ceil32(return_data.size) + 260
            while s < mem[_112]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_112 + ceil32(return_data.size) + 164] = address(_125)
            mem[_112 + ceil32(return_data.size) + 196] = block.timestamp
            require ext_code.size(stor5)
            call stor5.mem[mem[64] len 4] with:
               value stor2[_109] wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _112 + ceil32(return_data.size) + (32 * mem[_112]) + -mem[64] + 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if stor2.length == mem[(32 * idx) + 128]:
                stor2.length = stor1[mem[(32 * idx) + 128]].field_1024
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                stor1[stor1[mem[(32 * idx) + 128]].field_1024].field_1280 = 0
            else:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                stor1[stor1[mem[(32 * idx) + 128]].field_1280].field_1024 = stor1[mem[(32 * idx) + 128]].field_1024
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[96]:
                    revert with 'NH{q', 50
            if not stor3.length:
                revert with 'NH{q', 17
            stor3.length--
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 1
            stor1[mem[(32 * idx) + 128]].field_0 = 0
            stor1[mem[(32 * idx) + 128]].field_256 = 0
            stor1[mem[(32 * idx) + 128]].field_512 = 0
            stor1[mem[(32 * idx) + 128]].field_768 = 0
            stor1[mem[(32 * idx) + 128]].field_1024 = 0
            stor1[mem[(32 * idx) + 128]].field_1280 = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_236dbbdb(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg4.length) + 128 > test266151307() or ceil32(arg4.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if arg2 > -gasFee - 1:
        revert with 'NH{q', 17
    if msg.value < arg2 + gasFee:
        revert with 0, 'placeOrder: Wrong token amount'
    if msg.value < arg2:
        revert with 'NH{q', 17
    call stor4 with:
       value msg.value - arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg4.length) + 128] = msg.sender
    mem[ceil32(arg4.length) + 160] = address(arg1)
    if stor1[msg.sender][address(arg1)][Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256].field_256:
        revert with 0, 'insertOrder: order collision'
    if not stor3.length:
        stor2.length = sha3(msg.sender, address(arg1), Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256)
        stor1[msg.sender][address(arg1)][Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256].field_0 = Mask(8 * -ceil32(arg4.length) + arg4.length + 20, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        stor1[msg.sender][address(arg1)][Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256].field_256 = uint64(arg1) << 96
        stor1[msg.sender][address(arg1)][Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256].field_512 = arg2
        stor1[msg.sender][address(arg1)][Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256].field_768 = arg3
        stor1[msg.sender][address(arg1)][Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256].field_1024 = 0
        stor1[msg.sender][address(arg1)][Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256].field_1280 = 0
        if stor3.length == -1:
            revert with 'NH{q', 17
        stor3.length++
        emit OrderPlaced(sha3(msg.sender, address(arg1), Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256), arg2, arg3, msg.sender, address(arg1));
        # nil
    else:
        if arg3 <= stor1[stor2.length].field_768:
            stor2.length = sha3(msg.sender, address(arg1), Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256)
            stor1[msg.sender][address(arg1)][Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256].field_0 = Mask(8 * -ceil32(arg4.length) + arg4.length + 20, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            stor1[msg.sender][address(arg1)][Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256].field_256 = uint64(arg1) << 96
            stor1[msg.sender][address(arg1)][Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256].field_512 = arg2
            stor1[msg.sender][address(arg1)][Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256].field_768 = arg3
            stor1[msg.sender][address(arg1)][Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256].field_1024 = stor2.length
            stor1[msg.sender][address(arg1)][Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256].field_1280 = 0
            if stor3.length == -1:
                revert with 'NH{q', 17
            stor3.length++
            emit OrderPlaced(sha3(msg.sender, address(arg1), Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256), arg2, arg3, msg.sender, address(arg1));
            # nil
        else:
            if not stor1[stor2.length].field_1024:
                stor1[stor1[stor2.length].field_1024].field_1024 = sha3(msg.sender, address(arg1), Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256)
                stor1[msg.sender][address(arg1)][Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256].field_0 = Mask(8 * -ceil32(arg4.length) + arg4.length + 20, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                stor1[msg.sender][address(arg1)][Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256].field_256 = uint64(arg1) << 96
                stor1[msg.sender][address(arg1)][Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256].field_512 = arg2
                stor1[msg.sender][address(arg1)][Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256].field_768 = arg3
                stor1[msg.sender][address(arg1)][Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256].field_1024 = 0
                stor1[msg.sender][address(arg1)][Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256].field_1280 = stor1[stor2.length].field_1024
            else:
                s = stor1[stor2.length].field_1024
                t = 0
                while stor1[stor1[stor2.length].field_1024].field_1024:
                    if arg3 > stor1[stor1[s].field_1024].field_768:
                        mem[0] = stor1[s].field_1024
                        mem[32] = 1
                        s = stor1[s].field_1024
                        t = s
                        continue 
                    stor1[s].field_1024 = sha3(msg.sender, address(arg1), Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256)
                    stor1[msg.sender][address(arg1)][Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256].field_0 = Mask(8 * -ceil32(arg4.length) + arg4.length + 20, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    stor1[msg.sender][address(arg1)][Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256].field_256 = uint64(arg1) << 96
                    stor1[msg.sender][address(arg1)][Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256].field_512 = arg2
                    stor1[msg.sender][address(arg1)][Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256].field_768 = arg3
                    stor1[msg.sender][address(arg1)][Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256].field_1024 = stor1[s].field_1024
                    stor1[msg.sender][address(arg1)][Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256].field_1280 = t
                    if stor3.length == -1:
                        revert with 'NH{q', 17
                    stor3.length++
                    emit OrderPlaced(sha3(msg.sender, address(arg1), Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256), arg2, arg3, msg.sender, address(arg1));
                    # nil
                stor1[s].field_1024 = sha3(msg.sender, address(arg1), Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256)
                stor1[msg.sender][address(arg1)][Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256].field_0 = Mask(8 * -ceil32(arg4.length) + arg4.length + 20, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                stor1[msg.sender][address(arg1)][Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256].field_256 = uint64(arg1) << 96
                stor1[msg.sender][address(arg1)][Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256].field_512 = arg2
                stor1[msg.sender][address(arg1)][Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256].field_768 = arg3
                stor1[msg.sender][address(arg1)][Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256].field_1024 = stor1[s].field_1024
                stor1[msg.sender][address(arg1)][Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256].field_1280 = t
            if stor3.length == -1:
                revert with 'NH{q', 17
            stor3.length++
            emit OrderPlaced(sha3(msg.sender, address(arg1), Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256), arg2, arg3, msg.sender, address(arg1));
            # nil
}



}
