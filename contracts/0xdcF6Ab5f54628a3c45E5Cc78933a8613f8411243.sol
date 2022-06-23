contract main {




// =====================  Runtime code  =====================


address owner;
array of address stor1;
array of address stor2;
mapping of address stor3;

function getOwner() {
    return owner
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    emit OwnerSet(owner, arg1);
    owner = arg1
}

function sub_3908f713(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if bool(arg1):
        if bool(arg2) >= stor2.length:
            revert with 'NH{q', 50
        return stor2[bool(arg2)].field_0
    if bool(arg2) >= stor1.length:
        revert with 'NH{q', 50
    return stor1[bool(arg2)]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 >= stor2.length:
        revert with 'NH{q', 50
    if address(stor2.field_0) != msg.sender:
        if 1 >= stor2.length:
            revert with 'NH{q', 50
        if address(stor2.field_256) != msg.sender:
            return 0
    if 0 >= stor2.length:
        revert with 'NH{q', 50
    return stor3[address(stor2.field_0)]
}

function sub_9a057545(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if 0 >= stor2.length:
        revert with 'NH{q', 50
    if Mask(80, 0, !arg3) << 80 or Mask(80, 0, !arg2) < stor3[address(stor2.field_0)]:
        revert with 'NH{q', 17
    if bool(arg1) >= stor1.length:
        revert with 'NH{q', 50
    stor1[bool(arg1)] = address((Mask(80, 0, !arg3) << 80 or Mask(80, 0, !arg2)) - stor3[address(stor2.field_0)])
}

function sub_c52b4cf4(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if 0 >= stor2.length:
        revert with 'NH{q', 50
    if Mask(80, 0, !arg3) << 80 or Mask(80, 0, !arg2) < stor3[address(stor2.field_0)]:
        revert with 'NH{q', 17
    if bool(arg1) >= stor2.length:
        revert with 'NH{q', 50
    stor2[bool(arg1)].field_0 = address((Mask(80, 0, !arg3) << 80 or Mask(80, 0, !arg2)) - stor3[address(stor2.field_0)])
}

function w(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[18 len 14] > -ext_call.return_data[50 len 14] + test266151307():
        revert with 'NH{q', 17
    if Mask(112, 0, ext_call.return_data[18 len 14] + ext_call.return_data[50 len 14]) < ext_call.return_data[92 len 4]:
        revert with 'NH{q', 17
    if Mask(112, 0, Mask(112, 0, ext_call.return_data[18 len 14] + ext_call.return_data[50 len 14]) - ext_call.return_data[92 len 4]) > -address(arg2) + 0xffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if 0 >= stor2.length:
        revert with 'NH{q', 50
    stor3[address(stor2.field_0)] = address(Mask(112, 0, Mask(112, 0, ext_call.return_data[18 len 14] + ext_call.return_data[50 len 14]) - ext_call.return_data[92 len 4]) + address(arg2))
}

function _fallback() payable {
    require 4 <= calldata.size
    require calldata.size <= calldata.size
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 132).length) + 97 > test266151307() or floor32(('cd', 132).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = 128
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 0 >= stor2.length:
        revert with 'NH{q', 50
    if Mask(80, 0, !cd[68]) << 80 or Mask(80, 0, !cd[100]) > -stor3[address(stor2.field_0)] + 0xffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if bool(cd[4]) >= stor1.length:
        revert with 'NH{q', 50
    require ext_code.size(address((Mask(80, 0, !cd[68]) << 80 or Mask(80, 0, !cd[100])) + stor3[address(stor2.field_0)]))
    call address((Mask(80, 0, !cd[68]) << 80 or Mask(80, 0, !cd[100])) + stor3[address(stor2.field_0)]).burn(address arg1) with:
         gas gas_remaining wei
        args stor1[bool(cd[4])]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
}

function sub_7452f59b(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == arg6
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if 0 >= stor2.length:
        revert with 'NH{q', 50
    if Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3) > -stor3[address(stor2.field_0)] + 0xffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if 0 >= stor2.length:
        revert with 'NH{q', 50
    mem[0] = address(stor2.field_0)
    mem[32] = 3
    if Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5) > -stor3[address(stor2.field_0)] + 0xffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    mem[100] = this.address
    mem[132] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), 0x10ed43c718714eb63d5aa57b78b54704e256024e
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 100] = this.address
        mem[ceil32(return_data.size) + 132] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
        require ext_code.size(address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]))
        staticcall address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), 0x10ed43c718714eb63d5aa57b78b54704e256024e
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 96] = 2
            mem[(4 * ceil32(return_data.size)) + 128] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
            mem[(4 * ceil32(return_data.size)) + 160] = address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)])
            mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            if ext_call.return_data[0] >= arg6:
                mem[(4 * ceil32(return_data.size)) + 196] = arg6
                mem[(4 * ceil32(return_data.size)) + 228] = 64
                mem[(4 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = (4 * ceil32(return_data.size)) + 128
                t = (4 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg6, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _153 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32
                require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                _159 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192]
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192] > test266151307():
                    revert with 'NH{q', 65
                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 193
                mem[(6 * ceil32(return_data.size)) + 192] = _159
                require _153 + (32 * _159) + 32 <= return_data.size
                idx = 0
                s = (4 * ceil32(return_data.size)) + _153 + 224
                t = (6 * ceil32(return_data.size)) + 224
                while idx < _159:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= _159:
                    revert with 'NH{q', 50
                if mem[(6 * ceil32(return_data.size)) + 256] <= 0:
                    revert with 0, 'A1'
                if 1 >= _159:
                    revert with 'NH{q', 50
                _799 = mem[(6 * ceil32(return_data.size)) + 256]
                if not mem[(6 * ceil32(return_data.size)) + 256]:
                    _809 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_809] = 26
                    mem[_809 + 32] = 'SafeMath: division by zero'
                    if block.timestamp > -21:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg6
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 20
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg6, 0, 160, address(this.address), block.timestamp + 20, 2, mem[mem[64] + 196 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]))
                    staticcall address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1500 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1514 = mem[_1500]
                    require mem[_1500] == mem[_1500]
                    if 0 >= mem[(4 * ceil32(return_data.size)) + 96]:
                        revert with 'NH{q', 50
                    mem[(4 * ceil32(return_data.size)) + 128] = address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)])
                    if 1 >= mem[(4 * ceil32(return_data.size)) + 96]:
                        revert with 'NH{q', 50
                    mem[(4 * ceil32(return_data.size)) + 160] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1514
                    mem[mem[64] + 36] = 64
                    _1568 = mem[(4 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 68] = mem[(4 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 128
                    t = mem[64] + 100
                    while idx < _1568:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args _1514, 64, mem[mem[64] + 68 len (32 * _1568) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2196 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2208 = mem[_2196]
                    require mem[_2196] <= test266151307()
                    require _2196 + mem[_2196] + 31 < _2196 + return_data.size
                    _2220 = mem[_2196 + mem[_2196]]
                    if mem[_2196 + mem[_2196]] > test266151307():
                        revert with 'NH{q', 65
                    if _2196 + ceil32(return_data.size) + floor32(mem[_2196 + mem[_2196]]) + 1 > test266151307() or floor32(mem[_2196 + mem[_2196]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2196 + ceil32(return_data.size) + floor32(mem[_2196 + mem[_2196]]) + 1
                    mem[_2196 + ceil32(return_data.size)] = _2220
                    require _2208 + (32 * _2220) + 32 <= return_data.size
                    idx = 0
                    s = _2196 + _2208 + 32
                    t = _2196 + ceil32(return_data.size) + 32
                    while idx < _2220:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _2220:
                        revert with 'NH{q', 50
                    if mem[_2196 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'A2'
                    if 1 >= _2220:
                        revert with 'NH{q', 50
                    _2872 = mem[_2196 + ceil32(return_data.size) + 64]
                    if not mem[_2196 + ceil32(return_data.size) + 64]:
                        _2892 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2892] = 26
                        mem[_2892 + 32] = 'SafeMath: division by zero'
                        if block.timestamp > -21:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1514
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _3000 = mem[(4 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(4 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _3000:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 20
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _1514, 0, 160, address(this.address), block.timestamp + 20, mem[mem[64] + 164 len (32 * _3000) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if bool(arg1) >= stor1.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        require ext_code.size(address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]))
                        call address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]).burn(address arg1) with:
                             gas gas_remaining wei
                            args stor1[bool(arg1)]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3490 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_3490] == mem[_3490]
                        require mem[_3490 + 32] == mem[_3490 + 32]
                    else:
                        if mem[_2196 + ceil32(return_data.size) + 64] and 79 > -1 / mem[_2196 + ceil32(return_data.size) + 64]:
                            revert with 'NH{q', 17
                        if not mem[_2196 + ceil32(return_data.size) + 64]:
                            revert with 'NH{q', 18
                        if 79 * mem[_2196 + ceil32(return_data.size) + 64] / mem[_2196 + ceil32(return_data.size) + 64] != 79:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2932 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2932] = 26
                        mem[_2932 + 32] = 'SafeMath: division by zero'
                        if block.timestamp > -21:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1514
                        mem[mem[64] + 36] = 79 * _2872 / 100
                        mem[mem[64] + 68] = 160
                        _3048 = mem[(4 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(4 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _3048:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 20
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _1514, 79 * _2872 / 100, 160, address(this.address), block.timestamp + 20, mem[mem[64] + 164 len (32 * _3048) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if bool(arg1) >= stor1.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        require ext_code.size(address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]))
                        call address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]).burn(address arg1) with:
                             gas gas_remaining wei
                            args stor1[bool(arg1)]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3489 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_3489] == mem[_3489]
                        require mem[_3489 + 32] == mem[_3489 + 32]
                else:
                    if mem[(6 * ceil32(return_data.size)) + 256] and 79 > -1 / mem[(6 * ceil32(return_data.size)) + 256]:
                        revert with 'NH{q', 17
                    if not mem[(6 * ceil32(return_data.size)) + 256]:
                        revert with 'NH{q', 18
                    if 79 * mem[(6 * ceil32(return_data.size)) + 256] / mem[(6 * ceil32(return_data.size)) + 256] != 79:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _829 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_829] = 26
                    mem[_829 + 32] = 'SafeMath: division by zero'
                    if block.timestamp > -21:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg6
                    mem[mem[64] + 36] = 79 * _799 / 100
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 20
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg6, 79 * _799 / 100, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 20
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]))
                    staticcall address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1499 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1513 = mem[_1499]
                    require mem[_1499] == mem[_1499]
                    if 0 >= mem[(4 * ceil32(return_data.size)) + 96]:
                        revert with 'NH{q', 50
                    mem[(4 * ceil32(return_data.size)) + 128] = address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)])
                    if 1 >= mem[(4 * ceil32(return_data.size)) + 96]:
                        revert with 'NH{q', 50
                    mem[(4 * ceil32(return_data.size)) + 160] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1513
                    mem[mem[64] + 36] = 64
                    _1567 = mem[(4 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 68] = mem[(4 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 128
                    t = mem[64] + 100
                    while idx < _1567:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args _1513, 64, mem[mem[64] + 68 len (32 * _1567) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2195 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2207 = mem[_2195]
                    require mem[_2195] <= test266151307()
                    require _2195 + mem[_2195] + 31 < _2195 + return_data.size
                    _2219 = mem[_2195 + mem[_2195]]
                    if mem[_2195 + mem[_2195]] > test266151307():
                        revert with 'NH{q', 65
                    if _2195 + ceil32(return_data.size) + floor32(mem[_2195 + mem[_2195]]) + 1 > test266151307() or floor32(mem[_2195 + mem[_2195]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2195 + ceil32(return_data.size) + floor32(mem[_2195 + mem[_2195]]) + 1
                    mem[_2195 + ceil32(return_data.size)] = _2219
                    require _2207 + (32 * _2219) + 32 <= return_data.size
                    idx = 0
                    s = _2195 + _2207 + 32
                    t = _2195 + ceil32(return_data.size) + 32
                    while idx < _2219:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _2219:
                        revert with 'NH{q', 50
                    if mem[_2195 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'A2'
                    if 1 >= _2219:
                        revert with 'NH{q', 50
                    _2871 = mem[_2195 + ceil32(return_data.size) + 64]
                    if not mem[_2195 + ceil32(return_data.size) + 64]:
                        _2891 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2891] = 26
                        mem[_2891 + 32] = 'SafeMath: division by zero'
                        if block.timestamp > -21:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1513
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _2999 = mem[(4 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(4 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _2999:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 20
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _1513, 0, 160, address(this.address), block.timestamp + 20, mem[mem[64] + 164 len (32 * _2999) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if bool(arg1) >= stor1.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        require ext_code.size(address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]))
                        call address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]).burn(address arg1) with:
                             gas gas_remaining wei
                            args stor1[bool(arg1)]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3488 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_3488] == mem[_3488]
                        require mem[_3488 + 32] == mem[_3488 + 32]
                    else:
                        if mem[_2195 + ceil32(return_data.size) + 64] and 79 > -1 / mem[_2195 + ceil32(return_data.size) + 64]:
                            revert with 'NH{q', 17
                        if not mem[_2195 + ceil32(return_data.size) + 64]:
                            revert with 'NH{q', 18
                        if 79 * mem[_2195 + ceil32(return_data.size) + 64] / mem[_2195 + ceil32(return_data.size) + 64] != 79:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2931 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2931] = 26
                        mem[_2931 + 32] = 'SafeMath: division by zero'
                        if block.timestamp > -21:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1513
                        mem[mem[64] + 36] = 79 * _2871 / 100
                        mem[mem[64] + 68] = 160
                        _3047 = mem[(4 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(4 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _3047:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 20
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _1513, 79 * _2871 / 100, 160, address(this.address), block.timestamp + 20, mem[mem[64] + 164 len (32 * _3047) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if bool(arg1) >= stor1.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        require ext_code.size(address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]))
                        call address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]).burn(address arg1) with:
                             gas gas_remaining wei
                            args stor1[bool(arg1)]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3487 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_3487] == mem[_3487]
                        require mem[_3487 + 32] == mem[_3487 + 32]
            else:
                mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 228] = 64
                mem[(4 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = (4 * ceil32(return_data.size)) + 128
                t = (4 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _154 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                _160 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                    revert with 'NH{q', 65
                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                mem[(6 * ceil32(return_data.size)) + 192] = _160
                require _154 + (32 * _160) + 32 <= return_data.size
                idx = 0
                s = (4 * ceil32(return_data.size)) + _154 + 224
                t = (6 * ceil32(return_data.size)) + 224
                while idx < _160:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= _160:
                    revert with 'NH{q', 50
                if mem[(6 * ceil32(return_data.size)) + 256] <= 0:
                    revert with 0, 'A1'
                if 1 >= _160:
                    revert with 'NH{q', 50
                _800 = mem[(6 * ceil32(return_data.size)) + 256]
                if not mem[(6 * ceil32(return_data.size)) + 256]:
                    _810 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_810] = 26
                    mem[_810 + 32] = 'SafeMath: division by zero'
                    if block.timestamp > -21:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 20
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 20, 2, mem[mem[64] + 196 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]))
                    staticcall address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1502 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1516 = mem[_1502]
                    require mem[_1502] == mem[_1502]
                    if 0 >= mem[(4 * ceil32(return_data.size)) + 96]:
                        revert with 'NH{q', 50
                    mem[(4 * ceil32(return_data.size)) + 128] = address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)])
                    if 1 >= mem[(4 * ceil32(return_data.size)) + 96]:
                        revert with 'NH{q', 50
                    mem[(4 * ceil32(return_data.size)) + 160] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1516
                    mem[mem[64] + 36] = 64
                    _1570 = mem[(4 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 68] = mem[(4 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 128
                    t = mem[64] + 100
                    while idx < _1570:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args _1516, 64, mem[mem[64] + 68 len (32 * _1570) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2198 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2210 = mem[_2198]
                    require mem[_2198] <= test266151307()
                    require _2198 + mem[_2198] + 31 < _2198 + return_data.size
                    _2222 = mem[_2198 + mem[_2198]]
                    if mem[_2198 + mem[_2198]] > test266151307():
                        revert with 'NH{q', 65
                    if _2198 + ceil32(return_data.size) + floor32(mem[_2198 + mem[_2198]]) + 1 > test266151307() or floor32(mem[_2198 + mem[_2198]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2198 + ceil32(return_data.size) + floor32(mem[_2198 + mem[_2198]]) + 1
                    mem[_2198 + ceil32(return_data.size)] = _2222
                    require _2210 + (32 * _2222) + 32 <= return_data.size
                    idx = 0
                    s = _2198 + _2210 + 32
                    t = _2198 + ceil32(return_data.size) + 32
                    while idx < _2222:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _2222:
                        revert with 'NH{q', 50
                    if mem[_2198 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'A2'
                    if 1 >= _2222:
                        revert with 'NH{q', 50
                    _2874 = mem[_2198 + ceil32(return_data.size) + 64]
                    if not mem[_2198 + ceil32(return_data.size) + 64]:
                        _2894 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2894] = 26
                        mem[_2894 + 32] = 'SafeMath: division by zero'
                        if block.timestamp > -21:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1516
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _3002 = mem[(4 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(4 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _3002:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 20
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _1516, 0, 160, address(this.address), block.timestamp + 20, mem[mem[64] + 164 len (32 * _3002) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if bool(arg1) >= stor1.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        require ext_code.size(address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]))
                        call address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]).burn(address arg1) with:
                             gas gas_remaining wei
                            args stor1[bool(arg1)]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3494 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_3494] == mem[_3494]
                        require mem[_3494 + 32] == mem[_3494 + 32]
                    else:
                        if mem[_2198 + ceil32(return_data.size) + 64] and 79 > -1 / mem[_2198 + ceil32(return_data.size) + 64]:
                            revert with 'NH{q', 17
                        if not mem[_2198 + ceil32(return_data.size) + 64]:
                            revert with 'NH{q', 18
                        if 79 * mem[_2198 + ceil32(return_data.size) + 64] / mem[_2198 + ceil32(return_data.size) + 64] != 79:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2934 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2934] = 26
                        mem[_2934 + 32] = 'SafeMath: division by zero'
                        if block.timestamp > -21:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1516
                        mem[mem[64] + 36] = 79 * _2874 / 100
                        mem[mem[64] + 68] = 160
                        _3050 = mem[(4 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(4 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _3050:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 20
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _1516, 79 * _2874 / 100, 160, address(this.address), block.timestamp + 20, mem[mem[64] + 164 len (32 * _3050) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if bool(arg1) >= stor1.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        require ext_code.size(address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]))
                        call address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]).burn(address arg1) with:
                             gas gas_remaining wei
                            args stor1[bool(arg1)]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3493 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_3493] == mem[_3493]
                        require mem[_3493 + 32] == mem[_3493 + 32]
                else:
                    if mem[(6 * ceil32(return_data.size)) + 256] and 79 > -1 / mem[(6 * ceil32(return_data.size)) + 256]:
                        revert with 'NH{q', 17
                    if not mem[(6 * ceil32(return_data.size)) + 256]:
                        revert with 'NH{q', 18
                    if 79 * mem[(6 * ceil32(return_data.size)) + 256] / mem[(6 * ceil32(return_data.size)) + 256] != 79:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _830 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_830] = 26
                    mem[_830 + 32] = 'SafeMath: division by zero'
                    if block.timestamp > -21:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = 79 * _800 / 100
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 20
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 79 * _800 / 100, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 20
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]))
                    staticcall address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1501 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1515 = mem[_1501]
                    require mem[_1501] == mem[_1501]
                    if 0 >= mem[(4 * ceil32(return_data.size)) + 96]:
                        revert with 'NH{q', 50
                    mem[(4 * ceil32(return_data.size)) + 128] = address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)])
                    if 1 >= mem[(4 * ceil32(return_data.size)) + 96]:
                        revert with 'NH{q', 50
                    mem[(4 * ceil32(return_data.size)) + 160] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1515
                    mem[mem[64] + 36] = 64
                    _1569 = mem[(4 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 68] = mem[(4 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 128
                    t = mem[64] + 100
                    while idx < _1569:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args _1515, 64, mem[mem[64] + 68 len (32 * _1569) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2197 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2209 = mem[_2197]
                    require mem[_2197] <= test266151307()
                    require _2197 + mem[_2197] + 31 < _2197 + return_data.size
                    _2221 = mem[_2197 + mem[_2197]]
                    if mem[_2197 + mem[_2197]] > test266151307():
                        revert with 'NH{q', 65
                    if _2197 + ceil32(return_data.size) + floor32(mem[_2197 + mem[_2197]]) + 1 > test266151307() or floor32(mem[_2197 + mem[_2197]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2197 + ceil32(return_data.size) + floor32(mem[_2197 + mem[_2197]]) + 1
                    mem[_2197 + ceil32(return_data.size)] = _2221
                    require _2209 + (32 * _2221) + 32 <= return_data.size
                    idx = 0
                    s = _2197 + _2209 + 32
                    t = _2197 + ceil32(return_data.size) + 32
                    while idx < _2221:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _2221:
                        revert with 'NH{q', 50
                    if mem[_2197 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'A2'
                    if 1 >= _2221:
                        revert with 'NH{q', 50
                    _2873 = mem[_2197 + ceil32(return_data.size) + 64]
                    if not mem[_2197 + ceil32(return_data.size) + 64]:
                        _2893 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2893] = 26
                        mem[_2893 + 32] = 'SafeMath: division by zero'
                        if block.timestamp > -21:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1515
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _3001 = mem[(4 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(4 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _3001:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 20
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _1515, 0, 160, address(this.address), block.timestamp + 20, mem[mem[64] + 164 len (32 * _3001) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if bool(arg1) >= stor1.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        require ext_code.size(address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]))
                        call address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]).burn(address arg1) with:
                             gas gas_remaining wei
                            args stor1[bool(arg1)]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3492 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_3492] == mem[_3492]
                        require mem[_3492 + 32] == mem[_3492 + 32]
                    else:
                        if mem[_2197 + ceil32(return_data.size) + 64] and 79 > -1 / mem[_2197 + ceil32(return_data.size) + 64]:
                            revert with 'NH{q', 17
                        if not mem[_2197 + ceil32(return_data.size) + 64]:
                            revert with 'NH{q', 18
                        if 79 * mem[_2197 + ceil32(return_data.size) + 64] / mem[_2197 + ceil32(return_data.size) + 64] != 79:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2933 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2933] = 26
                        mem[_2933 + 32] = 'SafeMath: division by zero'
                        if block.timestamp > -21:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1515
                        mem[mem[64] + 36] = 79 * _2873 / 100
                        mem[mem[64] + 68] = 160
                        _3049 = mem[(4 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(4 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _3049:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 20
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _1515, 79 * _2873 / 100, 160, address(this.address), block.timestamp + 20, mem[mem[64] + 164 len (32 * _3049) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if bool(arg1) >= stor1.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        require ext_code.size(address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]))
                        call address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]).burn(address arg1) with:
                             gas gas_remaining wei
                            args stor1[bool(arg1)]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3491 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_3491] == mem[_3491]
                        require mem[_3491 + 32] == mem[_3491 + 32]
        else:
            mem[(2 * ceil32(return_data.size)) + 100] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
            mem[(2 * ceil32(return_data.size)) + 132] = -1
            require ext_code.size(address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]))
            call address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x10ed43c718714eb63d5aa57b78b54704e256024e, -1
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 96] = 2
            mem[(6 * ceil32(return_data.size)) + 128] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
            mem[(6 * ceil32(return_data.size)) + 160] = address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)])
            mem[(6 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            if ext_call.return_data[0] >= arg6:
                mem[(6 * ceil32(return_data.size)) + 196] = arg6
                mem[(6 * ceil32(return_data.size)) + 228] = 64
                mem[(6 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + 128
                t = (6 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg6, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _155 = mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32
                require mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
                _161 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192]
                if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192] > test266151307():
                    revert with 'NH{q', 65
                if (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 193
                mem[(7 * ceil32(return_data.size)) + 192] = _161
                require _155 + (32 * _161) + 32 <= return_data.size
                idx = 0
                s = (6 * ceil32(return_data.size)) + _155 + 224
                t = (7 * ceil32(return_data.size)) + 224
                while idx < _161:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= _161:
                    revert with 'NH{q', 50
                if mem[(7 * ceil32(return_data.size)) + 256] <= 0:
                    revert with 0, 'A1'
                if 1 >= _161:
                    revert with 'NH{q', 50
                _801 = mem[(7 * ceil32(return_data.size)) + 256]
                if not mem[(7 * ceil32(return_data.size)) + 256]:
                    _811 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_811] = 26
                    mem[_811 + 32] = 'SafeMath: division by zero'
                    if block.timestamp > -21:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg6
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 20
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg6, 0, 160, address(this.address), block.timestamp + 20, 2, mem[mem[64] + 196 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]))
                    staticcall address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1504 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1518 = mem[_1504]
                    require mem[_1504] == mem[_1504]
                    if 0 >= mem[(6 * ceil32(return_data.size)) + 96]:
                        revert with 'NH{q', 50
                    mem[(6 * ceil32(return_data.size)) + 128] = address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)])
                    if 1 >= mem[(6 * ceil32(return_data.size)) + 96]:
                        revert with 'NH{q', 50
                    mem[(6 * ceil32(return_data.size)) + 160] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1518
                    mem[mem[64] + 36] = 64
                    _1572 = mem[(6 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 68] = mem[(6 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 100
                    while idx < _1572:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args _1518, 64, mem[mem[64] + 68 len (32 * _1572) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2200 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2212 = mem[_2200]
                    require mem[_2200] <= test266151307()
                    require _2200 + mem[_2200] + 31 < _2200 + return_data.size
                    _2224 = mem[_2200 + mem[_2200]]
                    if mem[_2200 + mem[_2200]] > test266151307():
                        revert with 'NH{q', 65
                    if _2200 + ceil32(return_data.size) + floor32(mem[_2200 + mem[_2200]]) + 1 > test266151307() or floor32(mem[_2200 + mem[_2200]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2200 + ceil32(return_data.size) + floor32(mem[_2200 + mem[_2200]]) + 1
                    mem[_2200 + ceil32(return_data.size)] = _2224
                    require _2212 + (32 * _2224) + 32 <= return_data.size
                    idx = 0
                    s = _2200 + _2212 + 32
                    t = _2200 + ceil32(return_data.size) + 32
                    while idx < _2224:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _2224:
                        revert with 'NH{q', 50
                    if mem[_2200 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'A2'
                    if 1 >= _2224:
                        revert with 'NH{q', 50
                    _2876 = mem[_2200 + ceil32(return_data.size) + 64]
                    if not mem[_2200 + ceil32(return_data.size) + 64]:
                        _2896 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2896] = 26
                        mem[_2896 + 32] = 'SafeMath: division by zero'
                        if block.timestamp > -21:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1518
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _3004 = mem[(6 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _3004:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 20
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _1518, 0, 160, address(this.address), block.timestamp + 20, mem[mem[64] + 164 len (32 * _3004) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if bool(arg1) >= stor1.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        require ext_code.size(address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]))
                        call address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]).burn(address arg1) with:
                             gas gas_remaining wei
                            args stor1[bool(arg1)]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3498 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_3498] == mem[_3498]
                        require mem[_3498 + 32] == mem[_3498 + 32]
                    else:
                        if mem[_2200 + ceil32(return_data.size) + 64] and 79 > -1 / mem[_2200 + ceil32(return_data.size) + 64]:
                            revert with 'NH{q', 17
                        if not mem[_2200 + ceil32(return_data.size) + 64]:
                            revert with 'NH{q', 18
                        if 79 * mem[_2200 + ceil32(return_data.size) + 64] / mem[_2200 + ceil32(return_data.size) + 64] != 79:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2936 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2936] = 26
                        mem[_2936 + 32] = 'SafeMath: division by zero'
                        if block.timestamp > -21:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1518
                        mem[mem[64] + 36] = 79 * _2876 / 100
                        mem[mem[64] + 68] = 160
                        _3052 = mem[(6 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _3052:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 20
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _1518, 79 * _2876 / 100, 160, address(this.address), block.timestamp + 20, mem[mem[64] + 164 len (32 * _3052) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if bool(arg1) >= stor1.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        require ext_code.size(address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]))
                        call address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]).burn(address arg1) with:
                             gas gas_remaining wei
                            args stor1[bool(arg1)]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3497 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_3497] == mem[_3497]
                        require mem[_3497 + 32] == mem[_3497 + 32]
                else:
                    if mem[(7 * ceil32(return_data.size)) + 256] and 79 > -1 / mem[(7 * ceil32(return_data.size)) + 256]:
                        revert with 'NH{q', 17
                    if not mem[(7 * ceil32(return_data.size)) + 256]:
                        revert with 'NH{q', 18
                    if 79 * mem[(7 * ceil32(return_data.size)) + 256] / mem[(7 * ceil32(return_data.size)) + 256] != 79:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _831 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_831] = 26
                    mem[_831 + 32] = 'SafeMath: division by zero'
                    if block.timestamp > -21:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg6
                    mem[mem[64] + 36] = 79 * _801 / 100
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 20
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg6, 79 * _801 / 100, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 20
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]))
                    staticcall address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1503 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1517 = mem[_1503]
                    require mem[_1503] == mem[_1503]
                    if 0 >= mem[(6 * ceil32(return_data.size)) + 96]:
                        revert with 'NH{q', 50
                    mem[(6 * ceil32(return_data.size)) + 128] = address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)])
                    if 1 >= mem[(6 * ceil32(return_data.size)) + 96]:
                        revert with 'NH{q', 50
                    mem[(6 * ceil32(return_data.size)) + 160] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1517
                    mem[mem[64] + 36] = 64
                    _1571 = mem[(6 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 68] = mem[(6 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 100
                    while idx < _1571:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args _1517, 64, mem[mem[64] + 68 len (32 * _1571) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2199 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2211 = mem[_2199]
                    require mem[_2199] <= test266151307()
                    require _2199 + mem[_2199] + 31 < _2199 + return_data.size
                    _2223 = mem[_2199 + mem[_2199]]
                    if mem[_2199 + mem[_2199]] > test266151307():
                        revert with 'NH{q', 65
                    if _2199 + ceil32(return_data.size) + floor32(mem[_2199 + mem[_2199]]) + 1 > test266151307() or floor32(mem[_2199 + mem[_2199]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2199 + ceil32(return_data.size) + floor32(mem[_2199 + mem[_2199]]) + 1
                    mem[_2199 + ceil32(return_data.size)] = _2223
                    require _2211 + (32 * _2223) + 32 <= return_data.size
                    idx = 0
                    s = _2199 + _2211 + 32
                    t = _2199 + ceil32(return_data.size) + 32
                    while idx < _2223:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _2223:
                        revert with 'NH{q', 50
                    if mem[_2199 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'A2'
                    if 1 >= _2223:
                        revert with 'NH{q', 50
                    _2875 = mem[_2199 + ceil32(return_data.size) + 64]
                    if not mem[_2199 + ceil32(return_data.size) + 64]:
                        _2895 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2895] = 26
                        mem[_2895 + 32] = 'SafeMath: division by zero'
                        if block.timestamp > -21:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1517
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _3003 = mem[(6 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _3003:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 20
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _1517, 0, 160, address(this.address), block.timestamp + 20, mem[mem[64] + 164 len (32 * _3003) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if bool(arg1) >= stor1.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        require ext_code.size(address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]))
                        call address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]).burn(address arg1) with:
                             gas gas_remaining wei
                            args stor1[bool(arg1)]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3496 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_3496] == mem[_3496]
                        require mem[_3496 + 32] == mem[_3496 + 32]
                    else:
                        if mem[_2199 + ceil32(return_data.size) + 64] and 79 > -1 / mem[_2199 + ceil32(return_data.size) + 64]:
                            revert with 'NH{q', 17
                        if not mem[_2199 + ceil32(return_data.size) + 64]:
                            revert with 'NH{q', 18
                        if 79 * mem[_2199 + ceil32(return_data.size) + 64] / mem[_2199 + ceil32(return_data.size) + 64] != 79:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2935 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2935] = 26
                        mem[_2935 + 32] = 'SafeMath: division by zero'
                        if block.timestamp > -21:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1517
                        mem[mem[64] + 36] = 79 * _2875 / 100
                        mem[mem[64] + 68] = 160
                        _3051 = mem[(6 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _3051:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 20
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _1517, 79 * _2875 / 100, 160, address(this.address), block.timestamp + 20, mem[mem[64] + 164 len (32 * _3051) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if bool(arg1) >= stor1.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        require ext_code.size(address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]))
                        call address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]).burn(address arg1) with:
                             gas gas_remaining wei
                            args stor1[bool(arg1)]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3495 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_3495] == mem[_3495]
                        require mem[_3495 + 32] == mem[_3495 + 32]
            else:
                mem[(6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 228] = 64
                mem[(6 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + 128
                t = (6 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _156 = mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                require mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
                _162 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                    revert with 'NH{q', 65
                if (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                mem[(7 * ceil32(return_data.size)) + 192] = _162
                require _156 + (32 * _162) + 32 <= return_data.size
                idx = 0
                s = (6 * ceil32(return_data.size)) + _156 + 224
                t = (7 * ceil32(return_data.size)) + 224
                while idx < _162:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= _162:
                    revert with 'NH{q', 50
                if mem[(7 * ceil32(return_data.size)) + 256] <= 0:
                    revert with 0, 'A1'
                if 1 >= _162:
                    revert with 'NH{q', 50
                _802 = mem[(7 * ceil32(return_data.size)) + 256]
                if not mem[(7 * ceil32(return_data.size)) + 256]:
                    _812 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_812] = 26
                    mem[_812 + 32] = 'SafeMath: division by zero'
                    if block.timestamp > -21:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 20
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 20, 2, mem[mem[64] + 196 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]))
                    staticcall address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1506 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1520 = mem[_1506]
                    require mem[_1506] == mem[_1506]
                    if 0 >= mem[(6 * ceil32(return_data.size)) + 96]:
                        revert with 'NH{q', 50
                    mem[(6 * ceil32(return_data.size)) + 128] = address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)])
                    if 1 >= mem[(6 * ceil32(return_data.size)) + 96]:
                        revert with 'NH{q', 50
                    mem[(6 * ceil32(return_data.size)) + 160] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1520
                    mem[mem[64] + 36] = 64
                    _1574 = mem[(6 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 68] = mem[(6 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 100
                    while idx < _1574:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args _1520, 64, mem[mem[64] + 68 len (32 * _1574) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2202 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2214 = mem[_2202]
                    require mem[_2202] <= test266151307()
                    require _2202 + mem[_2202] + 31 < _2202 + return_data.size
                    _2226 = mem[_2202 + mem[_2202]]
                    if mem[_2202 + mem[_2202]] > test266151307():
                        revert with 'NH{q', 65
                    if _2202 + ceil32(return_data.size) + floor32(mem[_2202 + mem[_2202]]) + 1 > test266151307() or floor32(mem[_2202 + mem[_2202]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2202 + ceil32(return_data.size) + floor32(mem[_2202 + mem[_2202]]) + 1
                    mem[_2202 + ceil32(return_data.size)] = _2226
                    require _2214 + (32 * _2226) + 32 <= return_data.size
                    idx = 0
                    s = _2202 + _2214 + 32
                    t = _2202 + ceil32(return_data.size) + 32
                    while idx < _2226:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _2226:
                        revert with 'NH{q', 50
                    if mem[_2202 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'A2'
                    if 1 >= _2226:
                        revert with 'NH{q', 50
                    _2878 = mem[_2202 + ceil32(return_data.size) + 64]
                    if not mem[_2202 + ceil32(return_data.size) + 64]:
                        _2898 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2898] = 26
                        mem[_2898 + 32] = 'SafeMath: division by zero'
                        if block.timestamp > -21:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1520
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _3006 = mem[(6 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _3006:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 20
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _1520, 0, 160, address(this.address), block.timestamp + 20, mem[mem[64] + 164 len (32 * _3006) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if bool(arg1) >= stor1.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        require ext_code.size(address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]))
                        call address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]).burn(address arg1) with:
                             gas gas_remaining wei
                            args stor1[bool(arg1)]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3502 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_3502] == mem[_3502]
                        require mem[_3502 + 32] == mem[_3502 + 32]
                    else:
                        if mem[_2202 + ceil32(return_data.size) + 64] and 79 > -1 / mem[_2202 + ceil32(return_data.size) + 64]:
                            revert with 'NH{q', 17
                        if not mem[_2202 + ceil32(return_data.size) + 64]:
                            revert with 'NH{q', 18
                        if 79 * mem[_2202 + ceil32(return_data.size) + 64] / mem[_2202 + ceil32(return_data.size) + 64] != 79:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2938 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2938] = 26
                        mem[_2938 + 32] = 'SafeMath: division by zero'
                        if block.timestamp > -21:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1520
                        mem[mem[64] + 36] = 79 * _2878 / 100
                        mem[mem[64] + 68] = 160
                        _3054 = mem[(6 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _3054:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 20
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _1520, 79 * _2878 / 100, 160, address(this.address), block.timestamp + 20, mem[mem[64] + 164 len (32 * _3054) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if bool(arg1) >= stor1.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        require ext_code.size(address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]))
                        call address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]).burn(address arg1) with:
                             gas gas_remaining wei
                            args stor1[bool(arg1)]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3501 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_3501] == mem[_3501]
                        require mem[_3501 + 32] == mem[_3501 + 32]
                else:
                    if mem[(7 * ceil32(return_data.size)) + 256] and 79 > -1 / mem[(7 * ceil32(return_data.size)) + 256]:
                        revert with 'NH{q', 17
                    if not mem[(7 * ceil32(return_data.size)) + 256]:
                        revert with 'NH{q', 18
                    if 79 * mem[(7 * ceil32(return_data.size)) + 256] / mem[(7 * ceil32(return_data.size)) + 256] != 79:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _832 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_832] = 26
                    mem[_832 + 32] = 'SafeMath: division by zero'
                    if block.timestamp > -21:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = 79 * _802 / 100
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 20
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 79 * _802 / 100, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 20
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]))
                    staticcall address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1505 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1519 = mem[_1505]
                    require mem[_1505] == mem[_1505]
                    if 0 >= mem[(6 * ceil32(return_data.size)) + 96]:
                        revert with 'NH{q', 50
                    mem[(6 * ceil32(return_data.size)) + 128] = address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)])
                    if 1 >= mem[(6 * ceil32(return_data.size)) + 96]:
                        revert with 'NH{q', 50
                    mem[(6 * ceil32(return_data.size)) + 160] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1519
                    mem[mem[64] + 36] = 64
                    _1573 = mem[(6 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 68] = mem[(6 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 100
                    while idx < _1573:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args _1519, 64, mem[mem[64] + 68 len (32 * _1573) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2201 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2213 = mem[_2201]
                    require mem[_2201] <= test266151307()
                    require _2201 + mem[_2201] + 31 < _2201 + return_data.size
                    _2225 = mem[_2201 + mem[_2201]]
                    if mem[_2201 + mem[_2201]] > test266151307():
                        revert with 'NH{q', 65
                    if _2201 + ceil32(return_data.size) + floor32(mem[_2201 + mem[_2201]]) + 1 > test266151307() or floor32(mem[_2201 + mem[_2201]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2201 + ceil32(return_data.size) + floor32(mem[_2201 + mem[_2201]]) + 1
                    mem[_2201 + ceil32(return_data.size)] = _2225
                    require _2213 + (32 * _2225) + 32 <= return_data.size
                    idx = 0
                    s = _2201 + _2213 + 32
                    t = _2201 + ceil32(return_data.size) + 32
                    while idx < _2225:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _2225:
                        revert with 'NH{q', 50
                    if mem[_2201 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'A2'
                    if 1 >= _2225:
                        revert with 'NH{q', 50
                    _2877 = mem[_2201 + ceil32(return_data.size) + 64]
                    if not mem[_2201 + ceil32(return_data.size) + 64]:
                        _2897 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2897] = 26
                        mem[_2897 + 32] = 'SafeMath: division by zero'
                        if block.timestamp > -21:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1519
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _3005 = mem[(6 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _3005:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 20
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _1519, 0, 160, address(this.address), block.timestamp + 20, mem[mem[64] + 164 len (32 * _3005) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if bool(arg1) >= stor1.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        require ext_code.size(address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]))
                        call address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]).burn(address arg1) with:
                             gas gas_remaining wei
                            args stor1[bool(arg1)]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3500 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_3500] == mem[_3500]
                        require mem[_3500 + 32] == mem[_3500 + 32]
                    else:
                        if mem[_2201 + ceil32(return_data.size) + 64] and 79 > -1 / mem[_2201 + ceil32(return_data.size) + 64]:
                            revert with 'NH{q', 17
                        if not mem[_2201 + ceil32(return_data.size) + 64]:
                            revert with 'NH{q', 18
                        if 79 * mem[_2201 + ceil32(return_data.size) + 64] / mem[_2201 + ceil32(return_data.size) + 64] != 79:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2937 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2937] = 26
                        mem[_2937 + 32] = 'SafeMath: division by zero'
                        if block.timestamp > -21:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1519
                        mem[mem[64] + 36] = 79 * _2877 / 100
                        mem[mem[64] + 68] = 160
                        _3053 = mem[(6 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _3053:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 20
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _1519, 79 * _2877 / 100, 160, address(this.address), block.timestamp + 20, mem[mem[64] + 164 len (32 * _3053) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if bool(arg1) >= stor1.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        require ext_code.size(address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]))
                        call address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]).burn(address arg1) with:
                             gas gas_remaining wei
                            args stor1[bool(arg1)]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3499 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_3499] == mem[_3499]
                        require mem[_3499 + 32] == mem[_3499 + 32]
    else:
        mem[ceil32(return_data.size) + 100] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
        mem[ceil32(return_data.size) + 132] = -1
        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x10ed43c718714eb63d5aa57b78b54704e256024e, -1
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        mem[(2 * ceil32(return_data.size)) + 132] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
        require ext_code.size(address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]))
        staticcall address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), 0x10ed43c718714eb63d5aa57b78b54704e256024e
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            mem[(4 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 96] = 2
            mem[(6 * ceil32(return_data.size)) + 128] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
            mem[(6 * ceil32(return_data.size)) + 160] = address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)])
            mem[(6 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            if ext_call.return_data[0] >= arg6:
                mem[(6 * ceil32(return_data.size)) + 196] = arg6
                mem[(6 * ceil32(return_data.size)) + 228] = 64
                mem[(6 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + 128
                t = (6 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg6, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _157 = mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32
                require mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
                _163 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192]
                if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192] > test266151307():
                    revert with 'NH{q', 65
                if (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 193
                mem[(7 * ceil32(return_data.size)) + 192] = _163
                require _157 + (32 * _163) + 32 <= return_data.size
                idx = 0
                s = (6 * ceil32(return_data.size)) + _157 + 224
                t = (7 * ceil32(return_data.size)) + 224
                while idx < _163:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= _163:
                    revert with 'NH{q', 50
                if mem[(7 * ceil32(return_data.size)) + 256] <= 0:
                    revert with 0, 'A1'
                if 1 >= _163:
                    revert with 'NH{q', 50
                _803 = mem[(7 * ceil32(return_data.size)) + 256]
                if not mem[(7 * ceil32(return_data.size)) + 256]:
                    _813 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_813] = 26
                    mem[_813 + 32] = 'SafeMath: division by zero'
                    if block.timestamp > -21:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg6
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 20
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg6, 0, 160, address(this.address), block.timestamp + 20, 2, mem[mem[64] + 196 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]))
                    staticcall address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1508 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1522 = mem[_1508]
                    require mem[_1508] == mem[_1508]
                    if 0 >= mem[(6 * ceil32(return_data.size)) + 96]:
                        revert with 'NH{q', 50
                    mem[(6 * ceil32(return_data.size)) + 128] = address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)])
                    if 1 >= mem[(6 * ceil32(return_data.size)) + 96]:
                        revert with 'NH{q', 50
                    mem[(6 * ceil32(return_data.size)) + 160] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1522
                    mem[mem[64] + 36] = 64
                    _1576 = mem[(6 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 68] = mem[(6 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 100
                    while idx < _1576:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args _1522, 64, mem[mem[64] + 68 len (32 * _1576) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2204 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2216 = mem[_2204]
                    require mem[_2204] <= test266151307()
                    require _2204 + mem[_2204] + 31 < _2204 + return_data.size
                    _2228 = mem[_2204 + mem[_2204]]
                    if mem[_2204 + mem[_2204]] > test266151307():
                        revert with 'NH{q', 65
                    if _2204 + ceil32(return_data.size) + floor32(mem[_2204 + mem[_2204]]) + 1 > test266151307() or floor32(mem[_2204 + mem[_2204]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2204 + ceil32(return_data.size) + floor32(mem[_2204 + mem[_2204]]) + 1
                    mem[_2204 + ceil32(return_data.size)] = _2228
                    require _2216 + (32 * _2228) + 32 <= return_data.size
                    idx = 0
                    s = _2204 + _2216 + 32
                    t = _2204 + ceil32(return_data.size) + 32
                    while idx < _2228:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _2228:
                        revert with 'NH{q', 50
                    if mem[_2204 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'A2'
                    if 1 >= _2228:
                        revert with 'NH{q', 50
                    _2880 = mem[_2204 + ceil32(return_data.size) + 64]
                    if not mem[_2204 + ceil32(return_data.size) + 64]:
                        _2900 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2900] = 26
                        mem[_2900 + 32] = 'SafeMath: division by zero'
                        if block.timestamp > -21:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1522
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _3008 = mem[(6 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _3008:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 20
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _1522, 0, 160, address(this.address), block.timestamp + 20, mem[mem[64] + 164 len (32 * _3008) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if bool(arg1) >= stor1.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        require ext_code.size(address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]))
                        call address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]).burn(address arg1) with:
                             gas gas_remaining wei
                            args stor1[bool(arg1)]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3506 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_3506] == mem[_3506]
                        require mem[_3506 + 32] == mem[_3506 + 32]
                    else:
                        if mem[_2204 + ceil32(return_data.size) + 64] and 79 > -1 / mem[_2204 + ceil32(return_data.size) + 64]:
                            revert with 'NH{q', 17
                        if not mem[_2204 + ceil32(return_data.size) + 64]:
                            revert with 'NH{q', 18
                        if 79 * mem[_2204 + ceil32(return_data.size) + 64] / mem[_2204 + ceil32(return_data.size) + 64] != 79:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2940 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2940] = 26
                        mem[_2940 + 32] = 'SafeMath: division by zero'
                        if block.timestamp > -21:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1522
                        mem[mem[64] + 36] = 79 * _2880 / 100
                        mem[mem[64] + 68] = 160
                        _3056 = mem[(6 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _3056:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 20
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _1522, 79 * _2880 / 100, 160, address(this.address), block.timestamp + 20, mem[mem[64] + 164 len (32 * _3056) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if bool(arg1) >= stor1.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        require ext_code.size(address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]))
                        call address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]).burn(address arg1) with:
                             gas gas_remaining wei
                            args stor1[bool(arg1)]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3505 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_3505] == mem[_3505]
                        require mem[_3505 + 32] == mem[_3505 + 32]
                else:
                    if mem[(7 * ceil32(return_data.size)) + 256] and 79 > -1 / mem[(7 * ceil32(return_data.size)) + 256]:
                        revert with 'NH{q', 17
                    if not mem[(7 * ceil32(return_data.size)) + 256]:
                        revert with 'NH{q', 18
                    if 79 * mem[(7 * ceil32(return_data.size)) + 256] / mem[(7 * ceil32(return_data.size)) + 256] != 79:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _833 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_833] = 26
                    mem[_833 + 32] = 'SafeMath: division by zero'
                    if block.timestamp > -21:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg6
                    mem[mem[64] + 36] = 79 * _803 / 100
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 20
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg6, 79 * _803 / 100, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 20
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]))
                    staticcall address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1507 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1521 = mem[_1507]
                    require mem[_1507] == mem[_1507]
                    if 0 >= mem[(6 * ceil32(return_data.size)) + 96]:
                        revert with 'NH{q', 50
                    mem[(6 * ceil32(return_data.size)) + 128] = address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)])
                    if 1 >= mem[(6 * ceil32(return_data.size)) + 96]:
                        revert with 'NH{q', 50
                    mem[(6 * ceil32(return_data.size)) + 160] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1521
                    mem[mem[64] + 36] = 64
                    _1575 = mem[(6 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 68] = mem[(6 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 100
                    while idx < _1575:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args _1521, 64, mem[mem[64] + 68 len (32 * _1575) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2203 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2215 = mem[_2203]
                    require mem[_2203] <= test266151307()
                    require _2203 + mem[_2203] + 31 < _2203 + return_data.size
                    _2227 = mem[_2203 + mem[_2203]]
                    if mem[_2203 + mem[_2203]] > test266151307():
                        revert with 'NH{q', 65
                    if _2203 + ceil32(return_data.size) + floor32(mem[_2203 + mem[_2203]]) + 1 > test266151307() or floor32(mem[_2203 + mem[_2203]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2203 + ceil32(return_data.size) + floor32(mem[_2203 + mem[_2203]]) + 1
                    mem[_2203 + ceil32(return_data.size)] = _2227
                    require _2215 + (32 * _2227) + 32 <= return_data.size
                    idx = 0
                    s = _2203 + _2215 + 32
                    t = _2203 + ceil32(return_data.size) + 32
                    while idx < _2227:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _2227:
                        revert with 'NH{q', 50
                    if mem[_2203 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'A2'
                    if 1 >= _2227:
                        revert with 'NH{q', 50
                    _2879 = mem[_2203 + ceil32(return_data.size) + 64]
                    if not mem[_2203 + ceil32(return_data.size) + 64]:
                        _2899 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2899] = 26
                        mem[_2899 + 32] = 'SafeMath: division by zero'
                        if block.timestamp > -21:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1521
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _3007 = mem[(6 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _3007:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 20
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _1521, 0, 160, address(this.address), block.timestamp + 20, mem[mem[64] + 164 len (32 * _3007) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if bool(arg1) >= stor1.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        require ext_code.size(address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]))
                        call address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]).burn(address arg1) with:
                             gas gas_remaining wei
                            args stor1[bool(arg1)]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3504 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_3504] == mem[_3504]
                        require mem[_3504 + 32] == mem[_3504 + 32]
                    else:
                        if mem[_2203 + ceil32(return_data.size) + 64] and 79 > -1 / mem[_2203 + ceil32(return_data.size) + 64]:
                            revert with 'NH{q', 17
                        if not mem[_2203 + ceil32(return_data.size) + 64]:
                            revert with 'NH{q', 18
                        if 79 * mem[_2203 + ceil32(return_data.size) + 64] / mem[_2203 + ceil32(return_data.size) + 64] != 79:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2939 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2939] = 26
                        mem[_2939 + 32] = 'SafeMath: division by zero'
                        if block.timestamp > -21:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1521
                        mem[mem[64] + 36] = 79 * _2879 / 100
                        mem[mem[64] + 68] = 160
                        _3055 = mem[(6 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _3055:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 20
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _1521, 79 * _2879 / 100, 160, address(this.address), block.timestamp + 20, mem[mem[64] + 164 len (32 * _3055) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if bool(arg1) >= stor1.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        require ext_code.size(address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]))
                        call address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]).burn(address arg1) with:
                             gas gas_remaining wei
                            args stor1[bool(arg1)]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3503 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_3503] == mem[_3503]
                        require mem[_3503 + 32] == mem[_3503 + 32]
            else:
                mem[(6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 228] = 64
                mem[(6 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + 128
                t = (6 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _158 = mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                require mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
                _164 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                    revert with 'NH{q', 65
                if (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                mem[(7 * ceil32(return_data.size)) + 192] = _164
                require _158 + (32 * _164) + 32 <= return_data.size
                idx = 0
                s = (6 * ceil32(return_data.size)) + _158 + 224
                t = (7 * ceil32(return_data.size)) + 224
                while idx < _164:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= _164:
                    revert with 'NH{q', 50
                if mem[(7 * ceil32(return_data.size)) + 256] <= 0:
                    revert with 0, 'A1'
                if 1 >= _164:
                    revert with 'NH{q', 50
                _804 = mem[(7 * ceil32(return_data.size)) + 256]
                if not mem[(7 * ceil32(return_data.size)) + 256]:
                    _814 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_814] = 26
                    mem[_814 + 32] = 'SafeMath: division by zero'
                    if block.timestamp > -21:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 20
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 20, 2, mem[mem[64] + 196 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]))
                    staticcall address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1510 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1524 = mem[_1510]
                    require mem[_1510] == mem[_1510]
                    if 0 >= mem[(6 * ceil32(return_data.size)) + 96]:
                        revert with 'NH{q', 50
                    mem[(6 * ceil32(return_data.size)) + 128] = address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)])
                    if 1 >= mem[(6 * ceil32(return_data.size)) + 96]:
                        revert with 'NH{q', 50
                    mem[(6 * ceil32(return_data.size)) + 160] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1524
                    mem[mem[64] + 36] = 64
                    _1578 = mem[(6 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 68] = mem[(6 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 100
                    while idx < _1578:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args _1524, 64, mem[mem[64] + 68 len (32 * _1578) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2206 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2218 = mem[_2206]
                    require mem[_2206] <= test266151307()
                    require _2206 + mem[_2206] + 31 < _2206 + return_data.size
                    _2230 = mem[_2206 + mem[_2206]]
                    if mem[_2206 + mem[_2206]] > test266151307():
                        revert with 'NH{q', 65
                    if _2206 + ceil32(return_data.size) + floor32(mem[_2206 + mem[_2206]]) + 1 > test266151307() or floor32(mem[_2206 + mem[_2206]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2206 + ceil32(return_data.size) + floor32(mem[_2206 + mem[_2206]]) + 1
                    mem[_2206 + ceil32(return_data.size)] = _2230
                    require _2218 + (32 * _2230) + 32 <= return_data.size
                    idx = 0
                    s = _2206 + _2218 + 32
                    t = _2206 + ceil32(return_data.size) + 32
                    while idx < _2230:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _2230:
                        revert with 'NH{q', 50
                    if mem[_2206 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'A2'
                    if 1 >= _2230:
                        revert with 'NH{q', 50
                    _2882 = mem[_2206 + ceil32(return_data.size) + 64]
                    if not mem[_2206 + ceil32(return_data.size) + 64]:
                        _2902 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2902] = 26
                        mem[_2902 + 32] = 'SafeMath: division by zero'
                        if block.timestamp > -21:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1524
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _3010 = mem[(6 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _3010:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 20
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _1524, 0, 160, address(this.address), block.timestamp + 20, mem[mem[64] + 164 len (32 * _3010) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if bool(arg1) >= stor1.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        require ext_code.size(address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]))
                        call address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]).burn(address arg1) with:
                             gas gas_remaining wei
                            args stor1[bool(arg1)]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3510 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_3510] == mem[_3510]
                        require mem[_3510 + 32] == mem[_3510 + 32]
                    else:
                        if mem[_2206 + ceil32(return_data.size) + 64] and 79 > -1 / mem[_2206 + ceil32(return_data.size) + 64]:
                            revert with 'NH{q', 17
                        if not mem[_2206 + ceil32(return_data.size) + 64]:
                            revert with 'NH{q', 18
                        if 79 * mem[_2206 + ceil32(return_data.size) + 64] / mem[_2206 + ceil32(return_data.size) + 64] != 79:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2942 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2942] = 26
                        mem[_2942 + 32] = 'SafeMath: division by zero'
                        if block.timestamp > -21:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1524
                        mem[mem[64] + 36] = 79 * _2882 / 100
                        mem[mem[64] + 68] = 160
                        _3058 = mem[(6 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _3058:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 20
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _1524, 79 * _2882 / 100, 160, address(this.address), block.timestamp + 20, mem[mem[64] + 164 len (32 * _3058) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if bool(arg1) >= stor1.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        require ext_code.size(address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]))
                        call address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]).burn(address arg1) with:
                             gas gas_remaining wei
                            args stor1[bool(arg1)]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3509 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_3509] == mem[_3509]
                        require mem[_3509 + 32] == mem[_3509 + 32]
                else:
                    if mem[(7 * ceil32(return_data.size)) + 256] and 79 > -1 / mem[(7 * ceil32(return_data.size)) + 256]:
                        revert with 'NH{q', 17
                    if not mem[(7 * ceil32(return_data.size)) + 256]:
                        revert with 'NH{q', 18
                    if 79 * mem[(7 * ceil32(return_data.size)) + 256] / mem[(7 * ceil32(return_data.size)) + 256] != 79:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _834 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_834] = 26
                    mem[_834 + 32] = 'SafeMath: division by zero'
                    if block.timestamp > -21:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = 79 * _804 / 100
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 20
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 79 * _804 / 100, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 20
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]))
                    staticcall address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1509 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1523 = mem[_1509]
                    require mem[_1509] == mem[_1509]
                    if 0 >= mem[(6 * ceil32(return_data.size)) + 96]:
                        revert with 'NH{q', 50
                    mem[(6 * ceil32(return_data.size)) + 128] = address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)])
                    if 1 >= mem[(6 * ceil32(return_data.size)) + 96]:
                        revert with 'NH{q', 50
                    mem[(6 * ceil32(return_data.size)) + 160] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1523
                    mem[mem[64] + 36] = 64
                    _1577 = mem[(6 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 68] = mem[(6 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 100
                    while idx < _1577:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args _1523, 64, mem[mem[64] + 68 len (32 * _1577) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2205 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2217 = mem[_2205]
                    require mem[_2205] <= test266151307()
                    require _2205 + mem[_2205] + 31 < _2205 + return_data.size
                    _2229 = mem[_2205 + mem[_2205]]
                    if mem[_2205 + mem[_2205]] > test266151307():
                        revert with 'NH{q', 65
                    if _2205 + ceil32(return_data.size) + floor32(mem[_2205 + mem[_2205]]) + 1 > test266151307() or floor32(mem[_2205 + mem[_2205]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2205 + ceil32(return_data.size) + floor32(mem[_2205 + mem[_2205]]) + 1
                    mem[_2205 + ceil32(return_data.size)] = _2229
                    require _2217 + (32 * _2229) + 32 <= return_data.size
                    idx = 0
                    s = _2205 + _2217 + 32
                    t = _2205 + ceil32(return_data.size) + 32
                    while idx < _2229:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _2229:
                        revert with 'NH{q', 50
                    if mem[_2205 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'A2'
                    if 1 >= _2229:
                        revert with 'NH{q', 50
                    _2881 = mem[_2205 + ceil32(return_data.size) + 64]
                    if not mem[_2205 + ceil32(return_data.size) + 64]:
                        _2901 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2901] = 26
                        mem[_2901 + 32] = 'SafeMath: division by zero'
                        if block.timestamp > -21:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1523
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _3009 = mem[(6 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _3009:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 20
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _1523, 0, 160, address(this.address), block.timestamp + 20, mem[mem[64] + 164 len (32 * _3009) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if bool(arg1) >= stor1.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        require ext_code.size(address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]))
                        call address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]).burn(address arg1) with:
                             gas gas_remaining wei
                            args stor1[bool(arg1)]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3508 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_3508] == mem[_3508]
                        require mem[_3508 + 32] == mem[_3508 + 32]
                    else:
                        if mem[_2205 + ceil32(return_data.size) + 64] and 79 > -1 / mem[_2205 + ceil32(return_data.size) + 64]:
                            revert with 'NH{q', 17
                        if not mem[_2205 + ceil32(return_data.size) + 64]:
                            revert with 'NH{q', 18
                        if 79 * mem[_2205 + ceil32(return_data.size) + 64] / mem[_2205 + ceil32(return_data.size) + 64] != 79:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2941 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2941] = 26
                        mem[_2941 + 32] = 'SafeMath: division by zero'
                        if block.timestamp > -21:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1523
                        mem[mem[64] + 36] = 79 * _2881 / 100
                        mem[mem[64] + 68] = 160
                        _3057 = mem[(6 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _3057:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 20
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _1523, 79 * _2881 / 100, 160, address(this.address), block.timestamp + 20, mem[mem[64] + 164 len (32 * _3057) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if bool(arg1) >= stor1.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        require ext_code.size(address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]))
                        call address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]).burn(address arg1) with:
                             gas gas_remaining wei
                            args stor1[bool(arg1)]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3507 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_3507] == mem[_3507]
                        require mem[_3507 + 32] == mem[_3507 + 32]
        else:
            mem[(4 * ceil32(return_data.size)) + 100] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
            mem[(4 * ceil32(return_data.size)) + 132] = -1
            require ext_code.size(address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]))
            call address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x10ed43c718714eb63d5aa57b78b54704e256024e, -1
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 96] = 2
            mem[(7 * ceil32(return_data.size)) + 128] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
            mem[(7 * ceil32(return_data.size)) + 160] = address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)])
            mem[(7 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            if ext_call.return_data[0] >= arg6:
                mem[(7 * ceil32(return_data.size)) + 196] = arg6
                mem[(7 * ceil32(return_data.size)) + 228] = 64
                mem[(7 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = (7 * ceil32(return_data.size)) + 128
                t = (7 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg6, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (8 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _805 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32
                require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                _807 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192]
                if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192] > test266151307():
                    revert with 'NH{q', 65
                if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 193
                mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192]
                require _805 + (32 * _807) + 32 <= return_data.size
                idx = 0
                s = (7 * ceil32(return_data.size)) + _805 + 224
                t = (8 * ceil32(return_data.size)) + 224
                while idx < _807:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= _807:
                    revert with 'NH{q', 50
                if mem[(8 * ceil32(return_data.size)) + 256] <= 0:
                    revert with 0, 'A1'
                if 1 >= _807:
                    revert with 'NH{q', 50
                _1455 = mem[(8 * ceil32(return_data.size)) + 256]
                if not mem[(8 * ceil32(return_data.size)) + 256]:
                    _1457 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1457] = 26
                    mem[_1457 + 32] = 'SafeMath: division by zero'
                    if block.timestamp > -21:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg6
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _1565 = mem[(7 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 164] = mem[(7 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < _1565:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 20
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg6, 0, 160, address(this.address), block.timestamp + 20, mem[mem[64] + 164 len (32 * _1565) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]))
                    staticcall address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2256 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2272 = mem[_2256]
                    require mem[_2256] == mem[_2256]
                    if 0 >= mem[(7 * ceil32(return_data.size)) + 96]:
                        revert with 'NH{q', 50
                    mem[(7 * ceil32(return_data.size)) + 128] = address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)])
                    if 1 >= mem[(7 * ceil32(return_data.size)) + 96]:
                        revert with 'NH{q', 50
                    mem[(7 * ceil32(return_data.size)) + 160] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _2272
                    mem[mem[64] + 36] = 64
                    _2372 = mem[(7 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 68] = mem[(7 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + 128
                    t = mem[64] + 100
                    while idx < _2372:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args _2272, 64, mem[mem[64] + 68 len (32 * _2372) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2844 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2884 = mem[_2844]
                    require mem[_2844] <= test266151307()
                    require _2844 + mem[_2844] + 31 < _2844 + return_data.size
                    _2888 = mem[_2844 + mem[_2844]]
                    if mem[_2844 + mem[_2844]] > test266151307():
                        revert with 'NH{q', 65
                    if _2844 + ceil32(return_data.size) + floor32(mem[_2844 + mem[_2844]]) + 1 > test266151307() or floor32(mem[_2844 + mem[_2844]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2844 + ceil32(return_data.size) + floor32(mem[_2844 + mem[_2844]]) + 1
                    mem[_2844 + ceil32(return_data.size)] = _2888
                    require _2884 + (32 * _2888) + 32 <= return_data.size
                    idx = 0
                    s = _2844 + _2884 + 32
                    t = _2844 + ceil32(return_data.size) + 32
                    while idx < _2888:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _2888:
                        revert with 'NH{q', 50
                    if mem[_2844 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'A2'
                    if 1 >= _2888:
                        revert with 'NH{q', 50
                    _3364 = mem[_2844 + ceil32(return_data.size) + 64]
                    if not mem[_2844 + ceil32(return_data.size) + 64]:
                        _3368 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3368] = 26
                        mem[_3368 + 32] = 'SafeMath: division by zero'
                        if block.timestamp > -21:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2272
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _3536 = mem[(7 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(7 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _3536:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 20
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _2272, 0, 160, address(this.address), block.timestamp + 20, mem[mem[64] + 164 len (32 * _3536) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if bool(arg1) >= stor1.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        require ext_code.size(address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]))
                        call address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]).burn(address arg1) with:
                             gas gas_remaining wei
                            args stor1[bool(arg1)]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3678 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_3678] == mem[_3678]
                        require mem[_3678 + 32] == mem[_3678 + 32]
                    else:
                        if mem[_2844 + ceil32(return_data.size) + 64] and 79 > -1 / mem[_2844 + ceil32(return_data.size) + 64]:
                            revert with 'NH{q', 17
                        if not mem[_2844 + ceil32(return_data.size) + 64]:
                            revert with 'NH{q', 18
                        if 79 * mem[_2844 + ceil32(return_data.size) + 64] / mem[_2844 + ceil32(return_data.size) + 64] != 79:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3452 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3452] = 26
                        mem[_3452 + 32] = 'SafeMath: division by zero'
                        if block.timestamp > -21:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2272
                        mem[mem[64] + 36] = 79 * _3364 / 100
                        mem[mem[64] + 68] = 160
                        _3572 = mem[(7 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(7 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _3572:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 20
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _2272, 79 * _3364 / 100, 160, address(this.address), block.timestamp + 20, mem[mem[64] + 164 len (32 * _3572) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if bool(arg1) >= stor1.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        require ext_code.size(address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]))
                        call address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]).burn(address arg1) with:
                             gas gas_remaining wei
                            args stor1[bool(arg1)]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3677 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_3677] == mem[_3677]
                        require mem[_3677 + 32] == mem[_3677 + 32]
                else:
                    if mem[(8 * ceil32(return_data.size)) + 256] and 79 > -1 / mem[(8 * ceil32(return_data.size)) + 256]:
                        revert with 'NH{q', 17
                    if not mem[(8 * ceil32(return_data.size)) + 256]:
                        revert with 'NH{q', 18
                    if 79 * mem[(8 * ceil32(return_data.size)) + 256] / mem[(8 * ceil32(return_data.size)) + 256] != 79:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1511 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1511] = 26
                    mem[_1511 + 32] = 'SafeMath: division by zero'
                    if block.timestamp > -21:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg6
                    mem[mem[64] + 36] = 79 * _1455 / 100
                    mem[mem[64] + 68] = 160
                    _1619 = mem[(7 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 164] = mem[(7 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < _1619:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 20
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg6, 79 * _1455 / 100, 160, address(this.address), block.timestamp + 20, mem[mem[64] + 164 len (32 * _1619) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]))
                    staticcall address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2255 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2271 = mem[_2255]
                    require mem[_2255] == mem[_2255]
                    if 0 >= mem[(7 * ceil32(return_data.size)) + 96]:
                        revert with 'NH{q', 50
                    mem[(7 * ceil32(return_data.size)) + 128] = address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)])
                    if 1 >= mem[(7 * ceil32(return_data.size)) + 96]:
                        revert with 'NH{q', 50
                    mem[(7 * ceil32(return_data.size)) + 160] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _2271
                    mem[mem[64] + 36] = 64
                    _2371 = mem[(7 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 68] = mem[(7 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + 128
                    t = mem[64] + 100
                    while idx < _2371:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args _2271, 64, mem[mem[64] + 68 len (32 * _2371) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2843 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2883 = mem[_2843]
                    require mem[_2843] <= test266151307()
                    require _2843 + mem[_2843] + 31 < _2843 + return_data.size
                    _2887 = mem[_2843 + mem[_2843]]
                    if mem[_2843 + mem[_2843]] > test266151307():
                        revert with 'NH{q', 65
                    if _2843 + ceil32(return_data.size) + floor32(mem[_2843 + mem[_2843]]) + 1 > test266151307() or floor32(mem[_2843 + mem[_2843]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2843 + ceil32(return_data.size) + floor32(mem[_2843 + mem[_2843]]) + 1
                    mem[_2843 + ceil32(return_data.size)] = _2887
                    require _2883 + (32 * _2887) + 32 <= return_data.size
                    idx = 0
                    s = _2843 + _2883 + 32
                    t = _2843 + ceil32(return_data.size) + 32
                    while idx < _2887:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _2887:
                        revert with 'NH{q', 50
                    if mem[_2843 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'A2'
                    if 1 >= _2887:
                        revert with 'NH{q', 50
                    _3363 = mem[_2843 + ceil32(return_data.size) + 64]
                    if not mem[_2843 + ceil32(return_data.size) + 64]:
                        _3367 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3367] = 26
                        mem[_3367 + 32] = 'SafeMath: division by zero'
                        if block.timestamp > -21:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2271
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _3535 = mem[(7 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(7 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _3535:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 20
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _2271, 0, 160, address(this.address), block.timestamp + 20, mem[mem[64] + 164 len (32 * _3535) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if bool(arg1) >= stor1.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        require ext_code.size(address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]))
                        call address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]).burn(address arg1) with:
                             gas gas_remaining wei
                            args stor1[bool(arg1)]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3676 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_3676] == mem[_3676]
                        require mem[_3676 + 32] == mem[_3676 + 32]
                    else:
                        if mem[_2843 + ceil32(return_data.size) + 64] and 79 > -1 / mem[_2843 + ceil32(return_data.size) + 64]:
                            revert with 'NH{q', 17
                        if not mem[_2843 + ceil32(return_data.size) + 64]:
                            revert with 'NH{q', 18
                        if 79 * mem[_2843 + ceil32(return_data.size) + 64] / mem[_2843 + ceil32(return_data.size) + 64] != 79:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3451 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3451] = 26
                        mem[_3451 + 32] = 'SafeMath: division by zero'
                        if block.timestamp > -21:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2271
                        mem[mem[64] + 36] = 79 * _3363 / 100
                        mem[mem[64] + 68] = 160
                        _3571 = mem[(7 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(7 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _3571:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 20
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _2271, 79 * _3363 / 100, 160, address(this.address), block.timestamp + 20, mem[mem[64] + 164 len (32 * _3571) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if bool(arg1) >= stor1.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        require ext_code.size(address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]))
                        call address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]).burn(address arg1) with:
                             gas gas_remaining wei
                            args stor1[bool(arg1)]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3675 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_3675] == mem[_3675]
                        require mem[_3675 + 32] == mem[_3675 + 32]
            else:
                mem[(7 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                mem[(7 * ceil32(return_data.size)) + 228] = 64
                mem[(7 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = (7 * ceil32(return_data.size)) + 128
                t = (7 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (8 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _806 = mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                require mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                _808 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                    revert with 'NH{q', 65
                if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                require _806 + (32 * _808) + 32 <= return_data.size
                idx = 0
                s = (7 * ceil32(return_data.size)) + _806 + 224
                t = (8 * ceil32(return_data.size)) + 224
                while idx < _808:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= _808:
                    revert with 'NH{q', 50
                if mem[(8 * ceil32(return_data.size)) + 256] <= 0:
                    revert with 0, 'A1'
                if 1 >= _808:
                    revert with 'NH{q', 50
                _1456 = mem[(8 * ceil32(return_data.size)) + 256]
                if not mem[(8 * ceil32(return_data.size)) + 256]:
                    _1458 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1458] = 26
                    mem[_1458 + 32] = 'SafeMath: division by zero'
                    if block.timestamp > -21:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _1566 = mem[(7 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 164] = mem[(7 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < _1566:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 20
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 20, mem[mem[64] + 164 len (32 * _1566) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]))
                    staticcall address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2258 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2274 = mem[_2258]
                    require mem[_2258] == mem[_2258]
                    if 0 >= mem[(7 * ceil32(return_data.size)) + 96]:
                        revert with 'NH{q', 50
                    mem[(7 * ceil32(return_data.size)) + 128] = address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)])
                    if 1 >= mem[(7 * ceil32(return_data.size)) + 96]:
                        revert with 'NH{q', 50
                    mem[(7 * ceil32(return_data.size)) + 160] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _2274
                    mem[mem[64] + 36] = 64
                    _2374 = mem[(7 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 68] = mem[(7 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + 128
                    t = mem[64] + 100
                    while idx < _2374:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args _2274, 64, mem[mem[64] + 68 len (32 * _2374) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2846 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2886 = mem[_2846]
                    require mem[_2846] <= test266151307()
                    require _2846 + mem[_2846] + 31 < _2846 + return_data.size
                    _2890 = mem[_2846 + mem[_2846]]
                    if mem[_2846 + mem[_2846]] > test266151307():
                        revert with 'NH{q', 65
                    if _2846 + ceil32(return_data.size) + floor32(mem[_2846 + mem[_2846]]) + 1 > test266151307() or floor32(mem[_2846 + mem[_2846]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2846 + ceil32(return_data.size) + floor32(mem[_2846 + mem[_2846]]) + 1
                    mem[_2846 + ceil32(return_data.size)] = _2890
                    require _2886 + (32 * _2890) + 32 <= return_data.size
                    idx = 0
                    s = _2846 + _2886 + 32
                    t = _2846 + ceil32(return_data.size) + 32
                    while idx < _2890:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _2890:
                        revert with 'NH{q', 50
                    if mem[_2846 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'A2'
                    if 1 >= _2890:
                        revert with 'NH{q', 50
                    _3366 = mem[_2846 + ceil32(return_data.size) + 64]
                    if not mem[_2846 + ceil32(return_data.size) + 64]:
                        _3370 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3370] = 26
                        mem[_3370 + 32] = 'SafeMath: division by zero'
                        if block.timestamp > -21:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2274
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _3538 = mem[(7 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(7 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _3538:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 20
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _2274, 0, 160, address(this.address), block.timestamp + 20, mem[mem[64] + 164 len (32 * _3538) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if bool(arg1) >= stor1.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        require ext_code.size(address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]))
                        call address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]).burn(address arg1) with:
                             gas gas_remaining wei
                            args stor1[bool(arg1)]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3682 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_3682] == mem[_3682]
                        require mem[_3682 + 32] == mem[_3682 + 32]
                    else:
                        if mem[_2846 + ceil32(return_data.size) + 64] and 79 > -1 / mem[_2846 + ceil32(return_data.size) + 64]:
                            revert with 'NH{q', 17
                        if not mem[_2846 + ceil32(return_data.size) + 64]:
                            revert with 'NH{q', 18
                        if 79 * mem[_2846 + ceil32(return_data.size) + 64] / mem[_2846 + ceil32(return_data.size) + 64] != 79:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3454 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3454] = 26
                        mem[_3454 + 32] = 'SafeMath: division by zero'
                        if block.timestamp > -21:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2274
                        mem[mem[64] + 36] = 79 * _3366 / 100
                        mem[mem[64] + 68] = 160
                        _3574 = mem[(7 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(7 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _3574:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 20
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _2274, 79 * _3366 / 100, 160, address(this.address), block.timestamp + 20, mem[mem[64] + 164 len (32 * _3574) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if bool(arg1) >= stor1.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        require ext_code.size(address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]))
                        call address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]).burn(address arg1) with:
                             gas gas_remaining wei
                            args stor1[bool(arg1)]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3681 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_3681] == mem[_3681]
                        require mem[_3681 + 32] == mem[_3681 + 32]
                else:
                    if mem[(8 * ceil32(return_data.size)) + 256] and 79 > -1 / mem[(8 * ceil32(return_data.size)) + 256]:
                        revert with 'NH{q', 17
                    if not mem[(8 * ceil32(return_data.size)) + 256]:
                        revert with 'NH{q', 18
                    if 79 * mem[(8 * ceil32(return_data.size)) + 256] / mem[(8 * ceil32(return_data.size)) + 256] != 79:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1512 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1512] = 26
                    mem[_1512 + 32] = 'SafeMath: division by zero'
                    if block.timestamp > -21:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = 79 * _1456 / 100
                    mem[mem[64] + 68] = 160
                    _1620 = mem[(7 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 164] = mem[(7 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < _1620:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 20
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 79 * _1456 / 100, 160, address(this.address), block.timestamp + 20, mem[mem[64] + 164 len (32 * _1620) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]))
                    staticcall address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2257 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2273 = mem[_2257]
                    require mem[_2257] == mem[_2257]
                    if 0 >= mem[(7 * ceil32(return_data.size)) + 96]:
                        revert with 'NH{q', 50
                    mem[(7 * ceil32(return_data.size)) + 128] = address((Mask(80, 0, !arg2) << 80 or Mask(80, 0, !arg3)) + stor3[address(stor2.field_0)])
                    if 1 >= mem[(7 * ceil32(return_data.size)) + 96]:
                        revert with 'NH{q', 50
                    mem[(7 * ceil32(return_data.size)) + 160] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _2273
                    mem[mem[64] + 36] = 64
                    _2373 = mem[(7 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 68] = mem[(7 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + 128
                    t = mem[64] + 100
                    while idx < _2373:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args _2273, 64, mem[mem[64] + 68 len (32 * _2373) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2845 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2885 = mem[_2845]
                    require mem[_2845] <= test266151307()
                    require _2845 + mem[_2845] + 31 < _2845 + return_data.size
                    _2889 = mem[_2845 + mem[_2845]]
                    if mem[_2845 + mem[_2845]] > test266151307():
                        revert with 'NH{q', 65
                    if _2845 + ceil32(return_data.size) + floor32(mem[_2845 + mem[_2845]]) + 1 > test266151307() or floor32(mem[_2845 + mem[_2845]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2845 + ceil32(return_data.size) + floor32(mem[_2845 + mem[_2845]]) + 1
                    mem[_2845 + ceil32(return_data.size)] = _2889
                    require _2885 + (32 * _2889) + 32 <= return_data.size
                    idx = 0
                    s = _2845 + _2885 + 32
                    t = _2845 + ceil32(return_data.size) + 32
                    while idx < _2889:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _2889:
                        revert with 'NH{q', 50
                    if mem[_2845 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'A2'
                    if 1 >= _2889:
                        revert with 'NH{q', 50
                    _3365 = mem[_2845 + ceil32(return_data.size) + 64]
                    if not mem[_2845 + ceil32(return_data.size) + 64]:
                        _3369 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3369] = 26
                        mem[_3369 + 32] = 'SafeMath: division by zero'
                        if block.timestamp > -21:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2273
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _3537 = mem[(7 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(7 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _3537:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 20
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _2273, 0, 160, address(this.address), block.timestamp + 20, mem[mem[64] + 164 len (32 * _3537) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if bool(arg1) >= stor1.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        require ext_code.size(address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]))
                        call address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]).burn(address arg1) with:
                             gas gas_remaining wei
                            args stor1[bool(arg1)]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3680 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_3680] == mem[_3680]
                        require mem[_3680 + 32] == mem[_3680 + 32]
                    else:
                        if mem[_2845 + ceil32(return_data.size) + 64] and 79 > -1 / mem[_2845 + ceil32(return_data.size) + 64]:
                            revert with 'NH{q', 17
                        if not mem[_2845 + ceil32(return_data.size) + 64]:
                            revert with 'NH{q', 18
                        if 79 * mem[_2845 + ceil32(return_data.size) + 64] / mem[_2845 + ceil32(return_data.size) + 64] != 79:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3453 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3453] = 26
                        mem[_3453 + 32] = 'SafeMath: division by zero'
                        if block.timestamp > -21:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2273
                        mem[mem[64] + 36] = 79 * _3365 / 100
                        mem[mem[64] + 68] = 160
                        _3573 = mem[(7 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(7 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _3573:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 20
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _2273, 79 * _3365 / 100, 160, address(this.address), block.timestamp + 20, mem[mem[64] + 164 len (32 * _3573) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if bool(arg1) >= stor1.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        require ext_code.size(address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]))
                        call address((Mask(80, 0, !arg4) << 80 or Mask(80, 0, !arg5)) + stor3[address(stor2.field_0)]).burn(address arg1) with:
                             gas gas_remaining wei
                            args stor1[bool(arg1)]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3679 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_3679] == mem[_3679]
                        require mem[_3679 + 32] == mem[_3679 + 32]
}



}
