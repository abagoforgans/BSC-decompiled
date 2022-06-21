contract main {




// =====================  Runtime code  =====================


#
#  - sub_a85a79f9(?)
#  - sub_ad4a1e6f(?)
#  - sub_f29fc934(?)
#
array of struct stor0;
address sub_5dfb849bAddress;
uint256 sub_68bb600b;
uint256 paused;

function sub_5dfb849b(?) payable {
    return sub_5dfb849bAddress
}

function getPaused() payable {
    return paused
}

function sub_68bb600b(?) payable {
    return sub_68bb600b
}

function _fallback() payable {
    revert
}

function setPaused(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    paused = arg1
}

function setFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        sub_68bb600b = arg1
    revert with 0, 'O'
}

function setdevAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        sub_5dfb849bAddress = arg1
    revert with 0, 'O'
}

function addOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if not arg1:
            revert with 0, 'OZ'
        idx = 0
        while idx < stor0.length:
            mem[0] = 0
            if stor0[idx].field_0 == arg1:
                revert with 0, 'OA'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        stor0.length++
        stor0[stor0.length].field_0 = arg1
    revert with 0, 'O'
}

function sub_a8b9b715(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        staticcall address(arg1).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call address(arg1).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_5dfb849bAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    revert with 0, 'O'
}

function sub_7fd557a4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        staticcall address(arg1).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call address(arg1).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    revert with 0, 'O'
}

function owner() payable {
    mem[64] = (32 * stor0.length) + 128
    mem[96] = stor0.length
    if not stor0.length:
        mem[(32 * stor0.length) + 128] = 32
        mem[(32 * stor0.length) + 160] = stor0.length
        idx = 0
        s = 128
        t = (32 * stor0.length) + 192
        while idx < stor0.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor0.length) + 128
           len (96 * stor0.length) + 64
    mem[128] = address(stor0.field_0)
    idx = 128
    s = 0
    while (32 * stor0.length) + 96 > idx:
        mem[idx + 32] = stor0[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor0.length) + 128] = 32
    mem[(32 * stor0.length) + 160] = stor0.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor0.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor0.length) + -mem[64] + 192
}

function getContractInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall arg1.decimals() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    staticcall arg1.name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _8 = mem[ceil32(return_data.size) + 96]
    require mem[ceil32(return_data.size) + 96] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
    _9 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97 > test266151307() or ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    require _8 + _9 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_9)] = mem[ceil32(return_data.size) + _8 + 128 len ceil32(_9)]
    if ceil32(_9) > _9:
        mem[_9 + (2 * ceil32(return_data.size)) + 128] = 0
    mem[mem[64]] = ext_call.return_data[0]
    mem[mem[64] + 32] = 64
    mem[mem[64] + 64] = _9
    mem[mem[64] + 96 len ceil32(_9)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_9)]
    if ceil32(_9) > _9:
        mem[_9 + mem[64] + 96] = 0
    return ext_call.return_data[0], Array(len=_9, data=mem[mem[64] + 96 len ceil32(_9)])
}

function sub_cbf489c5(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    call address(arg3).transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg2), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    staticcall address(arg2).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    staticcall address(arg2).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(arg3).balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(arg3) == ext_call.return_data[12 len 20]:
        if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        staticcall address(arg1).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args Mask(144, 112, ext_call.return_data[0]), ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        staticcall address(arg2).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(arg2))
        if address(arg3) == ext_call.return_data[12 len 20]:
            call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[0], msg.sender, 128, 0
        else:
            call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, msg.sender, 128, 0
    else:
        if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 17
        staticcall address(arg1).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]), ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        staticcall address(arg2).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(arg2))
        if address(arg3) == ext_call.return_data[12 len 20]:
            call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[0], address(msg.sender), 128, 0, None
        else:
            call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, address(msg.sender), 128, 0, None
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function distribute(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    mem[100] = this.address
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if arg2:
        s = arg2
        idx = mem[96]
        while idx:
            mem[mem[64] + 4] = this.address
            staticcall arg1.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if s <= idx:
                _41 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_41] >= s:
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = s
                    call arg1.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg3), s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _57 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_57] == bool(mem[_57])
                if idx < s:
                    revert with 'NH{q', 17
                s = s
                idx = idx - s
                continue 
            _47 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_47] >= idx:
                mem[mem[64] + 4] = arg3
                mem[mem[64] + 36] = idx
                call arg1.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg3), idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _63 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_63] == bool(mem[_63])
            if idx < idx:
                revert with 'NH{q', 17
            s = idx
            idx = 0
            continue 
    else:
        idx = mem[96]
        while idx:
            mem[mem[64] + 4] = this.address
            staticcall arg1.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] <= idx:
                _44 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_44] >= ext_call.return_data[0]:
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = ext_call.return_data[0]
                    call arg1.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg3), ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _60 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_60] == bool(mem[_60])
                if idx < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                idx = idx - ext_call.return_data[0]
                continue 
            _48 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_48] >= idx:
                mem[mem[64] + 4] = arg3
                mem[mem[64] + 36] = idx
                call arg1.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg3), idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _64 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_64] == bool(mem[_64])
            if idx < idx:
                revert with 'NH{q', 17
            idx = 0
            continue 
}

function sub_75136771(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    staticcall address(arg3).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg4:
        call address(arg3).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        staticcall address(arg2).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        staticcall address(arg2).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(arg3).balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(arg3) == ext_call.return_data[12 len 20]:
            if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            staticcall address(arg1).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args Mask(144, 112, ext_call.return_data[0]), ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            staticcall address(arg2).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(arg2))
            if address(arg3) == ext_call.return_data[12 len 20]:
                call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[0], address(msg.sender), 128, 0, None
            else:
                call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, address(msg.sender), 128, 0, None
        else:
            if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            staticcall address(arg1).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]), ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            staticcall address(arg2).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(arg2))
            if address(arg3) == ext_call.return_data[12 len 20]:
                call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[0], msg.sender, 128, 0
            else:
                call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, address(msg.sender), 128, 0, None
    else:
        call address(arg3).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        staticcall address(arg2).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        staticcall address(arg2).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(arg3).balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(arg3) == ext_call.return_data[12 len 20]:
            if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            staticcall address(arg1).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args Mask(144, 112, ext_call.return_data[0]), ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            staticcall address(arg2).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(arg2))
            if address(arg3) == ext_call.return_data[12 len 20]:
                call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[0], msg.sender, 128, 0
            else:
                call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, msg.sender, 128, 0
        else:
            if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            staticcall address(arg1).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]), ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            staticcall address(arg2).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(arg2))
            if address(arg3) == ext_call.return_data[12 len 20]:
                call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[0], address(msg.sender), 128, 0, None
            else:
                call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, address(msg.sender), 128, 0, None
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3bc625e1(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 68).length
    if not ('cd', 68).length:
        if ('cd', 68).length > test266151307():
            revert with 'NH{q', 65
        mem[(32 * ('cd', 68).length) + 128] = ('cd', 68).length
        mem[64] = (64 * ('cd', 68).length) + 160
        if not ('cd', 68).length:
            idx = 0
            while idx < ('cd', 68).length:
                staticcall address(cd[36]).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _181 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _189 = mem[_181]
                require mem[_181] == mem[_181 + 12 len 20]
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                mem[mem[64] + 4] = address(cd[4])
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
                staticcall address(_189).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[4]), address(cd[((32 * idx) + cd[68] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _220 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _224 = mem[_220]
                require mem[_220] == mem[_220 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = 0
                if idx >= mem[(32 * ('cd', 68).length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = 0
                staticcall address(cd[36]).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _244 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _248 = mem[_244]
                require mem[_244] == mem[_244 + 12 len 20]
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                mem[mem[64] + 4] = address(cd[4])
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
                staticcall address(_248).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[4]), address(cd[((32 * idx) + cd[68] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _260 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_260] == mem[_260 + 12 len 20]
                if mem[_260 + 12 len 20]:
                    staticcall address(_224).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _276 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _280 = mem[_276]
                    require mem[_276] == mem[_276 + 18 len 14]
                    _284 = mem[_276 + 32]
                    require mem[_276 + 32] == mem[_276 + 50 len 14]
                    require mem[_276 + 64] == mem[_276 + 92 len 4]
                    if idx >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                    staticcall address(_224).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _300 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_300] == mem[_300 + 12 len 20]
                    if mem[_300 + 12 len 20] == address(cd[((32 * idx) + cd[68] + 36)]):
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = Mask(112, 0, _280)
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = 1
                    else:
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        staticcall address(_224).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _324 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_324] == mem[_324 + 12 len 20]
                        if mem[_324 + 12 len 20] == address(cd[((32 * idx) + cd[68] + 36)]):
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = Mask(112, 0, _284)
                            if idx >= mem[(32 * ('cd', 68).length) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = 1
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _180 = mem[64]
            mem[mem[64]] = 64
            _188 = mem[96]
            mem[mem[64] + 64] = mem[96]
            mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            _344 = mem[(32 * ('cd', 68).length) + 128]
            mem[_180 + (32 * mem[96]) + 96] = mem[(32 * ('cd', 68).length) + 128]
            mem[_180 + (32 * _188) + 128 len 32 * _344] = mem[(32 * ('cd', 68).length) + 160 len 32 * _344]
            return memory
              from mem[64]
               len _180 + (32 * _188) + (32 * _344) + -mem[64] + 128
        mem[(32 * ('cd', 68).length) + 160 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
        idx = 0
        while idx < ('cd', 68).length:
            staticcall address(cd[36]).factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _183 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _191 = mem[_183]
            require mem[_183] == mem[_183 + 12 len 20]
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
            staticcall address(_191).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[4]), address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _221 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _225 = mem[_221]
            require mem[_221] == mem[_221 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = 0
            if idx >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = 0
            staticcall address(cd[36]).factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _245 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _249 = mem[_245]
            require mem[_245] == mem[_245 + 12 len 20]
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
            staticcall address(_249).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[4]), address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _261 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_261] == mem[_261 + 12 len 20]
            if mem[_261 + 12 len 20]:
                staticcall address(_225).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _277 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _281 = mem[_277]
                require mem[_277] == mem[_277 + 18 len 14]
                _285 = mem[_277 + 32]
                require mem[_277 + 32] == mem[_277 + 50 len 14]
                require mem[_277 + 64] == mem[_277 + 92 len 4]
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                staticcall address(_225).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _301 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_301] == mem[_301 + 12 len 20]
                if mem[_301 + 12 len 20] == address(cd[((32 * idx) + cd[68] + 36)]):
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = Mask(112, 0, _281)
                    if idx >= mem[(32 * ('cd', 68).length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = 1
                else:
                    if idx >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                    staticcall address(_225).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _325 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_325] == mem[_325 + 12 len 20]
                    if mem[_325 + 12 len 20] == address(cd[((32 * idx) + cd[68] + 36)]):
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = Mask(112, 0, _285)
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = 1
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _182 = mem[64]
        mem[mem[64]] = 64
        _190 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _345 = mem[(32 * ('cd', 68).length) + 128]
        mem[_182 + (32 * mem[96]) + 96] = mem[(32 * ('cd', 68).length) + 128]
        mem[_182 + (32 * _190) + 128 len 32 * _345] = mem[(32 * ('cd', 68).length) + 160 len 32 * _345]
        return memory
          from mem[64]
           len _182 + (32 * _190) + (32 * _345) + -mem[64] + 128
    mem[128 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    mem[(32 * ('cd', 68).length) + 128] = ('cd', 68).length
    mem[64] = (64 * ('cd', 68).length) + 160
    if not ('cd', 68).length:
        idx = 0
        while idx < ('cd', 68).length:
            staticcall address(cd[36]).factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _185 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _193 = mem[_185]
            require mem[_185] == mem[_185 + 12 len 20]
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
            staticcall address(_193).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[4]), address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _222 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _226 = mem[_222]
            require mem[_222] == mem[_222 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = 0
            if idx >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = 0
            staticcall address(cd[36]).factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _246 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _250 = mem[_246]
            require mem[_246] == mem[_246 + 12 len 20]
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
            staticcall address(_250).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[4]), address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _262 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_262] == mem[_262 + 12 len 20]
            if mem[_262 + 12 len 20]:
                staticcall address(_226).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _278 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _282 = mem[_278]
                require mem[_278] == mem[_278 + 18 len 14]
                _286 = mem[_278 + 32]
                require mem[_278 + 32] == mem[_278 + 50 len 14]
                require mem[_278 + 64] == mem[_278 + 92 len 4]
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                staticcall address(_226).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _302 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_302] == mem[_302 + 12 len 20]
                if mem[_302 + 12 len 20] == address(cd[((32 * idx) + cd[68] + 36)]):
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = Mask(112, 0, _282)
                    if idx >= mem[(32 * ('cd', 68).length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = 1
                else:
                    if idx >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                    staticcall address(_226).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _326 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_326] == mem[_326 + 12 len 20]
                    if mem[_326 + 12 len 20] == address(cd[((32 * idx) + cd[68] + 36)]):
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = Mask(112, 0, _286)
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = 1
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _184 = mem[64]
        mem[mem[64]] = 64
        _192 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _346 = mem[(32 * ('cd', 68).length) + 128]
        mem[_184 + (32 * mem[96]) + 96] = mem[(32 * ('cd', 68).length) + 128]
        mem[_184 + (32 * _192) + 128 len 32 * _346] = mem[(32 * ('cd', 68).length) + 160 len 32 * _346]
        return memory
          from mem[64]
           len _184 + (32 * _192) + (32 * _346) + -mem[64] + 128
    mem[(32 * ('cd', 68).length) + 160 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
    idx = 0
    while idx < ('cd', 68).length:
        staticcall address(cd[36]).factory() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _187 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _195 = mem[_187]
        require mem[_187] == mem[_187 + 12 len 20]
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64] + 4] = address(cd[4])
        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
        staticcall address(_195).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(cd[4]), address(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _223 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _227 = mem[_223]
        require mem[_223] == mem[_223 + 12 len 20]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = 0
        if idx >= mem[(32 * ('cd', 68).length) + 128]:
            revert with 'NH{q', 50
        mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = 0
        staticcall address(cd[36]).factory() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _247 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _251 = mem[_247]
        require mem[_247] == mem[_247 + 12 len 20]
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64] + 4] = address(cd[4])
        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
        staticcall address(_251).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(cd[4]), address(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _263 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_263] == mem[_263 + 12 len 20]
        if mem[_263 + 12 len 20]:
            staticcall address(_227).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _279 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _283 = mem[_279]
            require mem[_279] == mem[_279 + 18 len 14]
            _287 = mem[_279 + 32]
            require mem[_279 + 32] == mem[_279 + 50 len 14]
            require mem[_279 + 64] == mem[_279 + 92 len 4]
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            staticcall address(_227).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _303 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_303] == mem[_303 + 12 len 20]
            if mem[_303 + 12 len 20] == address(cd[((32 * idx) + cd[68] + 36)]):
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = Mask(112, 0, _283)
                if idx >= mem[(32 * ('cd', 68).length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = 1
            else:
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                staticcall address(_227).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _327 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_327] == mem[_327 + 12 len 20]
                if mem[_327 + 12 len 20] == address(cd[((32 * idx) + cd[68] + 36)]):
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = Mask(112, 0, _287)
                    if idx >= mem[(32 * ('cd', 68).length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _186 = mem[64]
    mem[mem[64]] = 64
    _194 = mem[96]
    mem[mem[64] + 64] = mem[96]
    mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    _347 = mem[(32 * ('cd', 68).length) + 128]
    mem[_186 + (32 * mem[96]) + 96] = mem[(32 * ('cd', 68).length) + 128]
    mem[_186 + (32 * _194) + 128 len 32 * _347] = mem[(32 * ('cd', 68).length) + 160 len 32 * _347]
    return memory
      from mem[64]
       len _186 + (32 * _194) + (32 * _347) + -mem[64] + 128
}

function sub_f3ff11d2(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if ('cd', 4).length and ('cd', 36).length > -1 / ('cd', 4).length:
        revert with 'NH{q', 17
    else:
        if ('cd', 4).length * ('cd', 36).length and ('cd', 68).length > -1 / ('cd', 4).length * ('cd', 36).length:
            revert with 'NH{q', 17
        else:
            if ('cd', 4).length * ('cd', 36).length * ('cd', 68).length > test266151307():
                revert with 'NH{q', 65
            else:
                mem[96] = ('cd', 4).length * ('cd', 36).length * ('cd', 68).length
                mem[64] = (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 128
                if not ('cd', 4).length * ('cd', 36).length * ('cd', 68).length:
                    idx = 0
                    while idx < ('cd', 36).length:
                        s = 0
                        while s < ('cd', 4).length:
                            require cd[((32 * s) + cd[4] + 36)] == address(cd[((32 * s) + cd[4] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            else:
                                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                if ('cd', 68).length > test266151307():
                                    revert with 'NH{q', 65
                                else:
                                    _760 = mem[64]
                                    mem[mem[64]] = ('cd', 68).length
                                    if not ('cd', 68).length:
                                        if ('cd', 68).length > test266151307():
                                            revert with 'NH{q', 65
                                        else:
                                            _761 = mem[64] + (32 * ('cd', 68).length) + 32
                                            mem[mem[64] + (32 * ('cd', 68).length) + 32] = ('cd', 68).length
                                            mem[64] = mem[64] + (64 * ('cd', 68).length) + 64
                                            if not ('cd', 68).length:
                                                t = 0
                                                while t < ('cd', 68).length:
                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                            gas gas_remaining wei
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _1294 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _1307 = mem[_1294]
                                                        require mem[_1294] == mem[_1294 + 12 len 20]
                                                        if t >= ('cd', 68).length:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                            staticcall address(_1307).getPair(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                _1355 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _1359 = mem[_1355]
                                                                require mem[_1355] == mem[_1355 + 12 len 20]
                                                                if t >= mem[_760]:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    mem[(32 * t) + _760 + 32] = 0
                                                                    if t >= mem[_761]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[(32 * t) + _761 + 32] = 0
                                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                gas gas_remaining wei
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _1385 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            _1401 = mem[_1385]
                                                                            require mem[_1385] == mem[_1385 + 12 len 20]
                                                                            if t >= ('cd', 68).length:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                staticcall address(_1401).getPair(address arg1, address arg2) with:
                                                                                        gas gas_remaining wei
                                                                                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _1491 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_1491] == mem[_1491 + 12 len 20]
                                                                                    if not mem[_1491 + 12 len 20]:
                                                                                        if t == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            t = t + 1
                                                                                            continue 
                                                                                    else:
                                                                                        staticcall address(_1359).getReserves() with:
                                                                                                gas gas_remaining wei
                                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _1540 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 96
                                                                                            _1561 = mem[_1540]
                                                                                            require mem[_1540] == mem[_1540 + 18 len 14]
                                                                                            _1584 = mem[_1540 + 32]
                                                                                            require mem[_1540 + 32] == mem[_1540 + 50 len 14]
                                                                                            require mem[_1540 + 64] == mem[_1540 + 92 len 4]
                                                                                            if t >= ('cd', 68).length:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                staticcall address(_1359).token0() with:
                                                                                                        gas gas_remaining wei
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _1622 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_1622] == mem[_1622 + 12 len 20]
                                                                                                    if mem[_1622 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                        if t >= ('cd', 68).length:
                                                                                                            revert with 'NH{q', 50
                                                                                                        else:
                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            staticcall address(_1359).token1() with:
                                                                                                                    gas gas_remaining wei
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _1704 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_1704] == mem[_1704 + 12 len 20]
                                                                                                                if mem[_1704 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                    if t == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        t = t + 1
                                                                                                                        continue 
                                                                                                                else:
                                                                                                                    if t >= mem[_760]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        mem[(32 * t) + _760 + 32] = Mask(112, 0, _1584)
                                                                                                                        if t >= mem[_761]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            mem[(32 * t) + _761 + 32] = 1
                                                                                                                            if t == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                t = t + 1
                                                                                                                                continue 
                                                                                                    else:
                                                                                                        if t >= mem[_760]:
                                                                                                            revert with 'NH{q', 50
                                                                                                        else:
                                                                                                            mem[(32 * t) + _760 + 32] = Mask(112, 0, _1561)
                                                                                                            if t >= mem[_761]:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                mem[(32 * t) + _761 + 32] = 1
                                                                                                                if t == -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    t = t + 1
                                                                                                                    continue 
                                                _1825 = mem[_760]
                                                t = 0
                                                u = 0
                                                while t < _1825:
                                                    _1829 = mem[64]
                                                    mem[64] = mem[64] + 128
                                                    mem[_1829] = idx
                                                    mem[_1829 + 32] = s
                                                    if t >= mem[_760]:
                                                        revert with 'NH{q', 50
                                                    else:
                                                        mem[_1829 + 64] = mem[(32 * t) + _760 + 32]
                                                        if t >= mem[_761]:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            mem[_1829 + 96] = mem[(32 * t) + _761 + 32]
                                                            if u == -1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if u >= mem[96]:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    mem[(32 * u) + 128] = _1829
                                                                    if t == -1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        t = t + 1
                                                                        u = u + 1
                                                                        continue 
                                                if s == -1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    s = s + 1
                                                    continue 
                                            else:
                                                mem[_761 + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                t = 0
                                                while t < ('cd', 68).length:
                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                            gas gas_remaining wei
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _1295 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _1310 = mem[_1295]
                                                        require mem[_1295] == mem[_1295 + 12 len 20]
                                                        if t >= ('cd', 68).length:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                            staticcall address(_1310).getPair(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                _1356 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _1360 = mem[_1356]
                                                                require mem[_1356] == mem[_1356 + 12 len 20]
                                                                if t >= mem[_760]:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    mem[(32 * t) + _760 + 32] = 0
                                                                    if t >= mem[_761]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[(32 * t) + _761 + 32] = 0
                                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                gas gas_remaining wei
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _1386 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            _1402 = mem[_1386]
                                                                            require mem[_1386] == mem[_1386 + 12 len 20]
                                                                            if t >= ('cd', 68).length:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                staticcall address(_1402).getPair(address arg1, address arg2) with:
                                                                                        gas gas_remaining wei
                                                                                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _1492 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_1492] == mem[_1492 + 12 len 20]
                                                                                    if not mem[_1492 + 12 len 20]:
                                                                                        if t == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            t = t + 1
                                                                                            continue 
                                                                                    else:
                                                                                        staticcall address(_1360).getReserves() with:
                                                                                                gas gas_remaining wei
                                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _1541 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 96
                                                                                            _1562 = mem[_1541]
                                                                                            require mem[_1541] == mem[_1541 + 18 len 14]
                                                                                            _1585 = mem[_1541 + 32]
                                                                                            require mem[_1541 + 32] == mem[_1541 + 50 len 14]
                                                                                            require mem[_1541 + 64] == mem[_1541 + 92 len 4]
                                                                                            if t >= ('cd', 68).length:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                staticcall address(_1360).token0() with:
                                                                                                        gas gas_remaining wei
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _1623 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_1623] == mem[_1623 + 12 len 20]
                                                                                                    if mem[_1623 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                        if t >= ('cd', 68).length:
                                                                                                            revert with 'NH{q', 50
                                                                                                        else:
                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            staticcall address(_1360).token1() with:
                                                                                                                    gas gas_remaining wei
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _1705 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_1705] == mem[_1705 + 12 len 20]
                                                                                                                if mem[_1705 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                    if t == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        t = t + 1
                                                                                                                        continue 
                                                                                                                else:
                                                                                                                    if t >= mem[_760]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        mem[(32 * t) + _760 + 32] = Mask(112, 0, _1585)
                                                                                                                        if t >= mem[_761]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            mem[(32 * t) + _761 + 32] = 1
                                                                                                                            if t == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                t = t + 1
                                                                                                                                continue 
                                                                                                    else:
                                                                                                        if t >= mem[_760]:
                                                                                                            revert with 'NH{q', 50
                                                                                                        else:
                                                                                                            mem[(32 * t) + _760 + 32] = Mask(112, 0, _1562)
                                                                                                            if t >= mem[_761]:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                mem[(32 * t) + _761 + 32] = 1
                                                                                                                if t == -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    t = t + 1
                                                                                                                    continue 
                                                _1826 = mem[_760]
                                                t = 0
                                                u = 0
                                                while t < _1826:
                                                    _1831 = mem[64]
                                                    mem[64] = mem[64] + 128
                                                    mem[_1831] = idx
                                                    mem[_1831 + 32] = s
                                                    if t >= mem[_760]:
                                                        revert with 'NH{q', 50
                                                    else:
                                                        mem[_1831 + 64] = mem[(32 * t) + _760 + 32]
                                                        if t >= mem[_761]:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            mem[_1831 + 96] = mem[(32 * t) + _761 + 32]
                                                            if u == -1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if u >= mem[96]:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    mem[(32 * u) + 128] = _1831
                                                                    if t == -1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        t = t + 1
                                                                        u = u + 1
                                                                        continue 
                                                if s == -1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    s = s + 1
                                                    continue 
                                    else:
                                        mem[mem[64] + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                        if ('cd', 68).length > test266151307():
                                            revert with 'NH{q', 65
                                        else:
                                            mem[mem[64] + (32 * ('cd', 68).length) + 32] = ('cd', 68).length
                                            mem[64] = mem[64] + (64 * ('cd', 68).length) + 64
                                            if not ('cd', 68).length:
                                                t = 0
                                                while t < ('cd', 68).length:
                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                            gas gas_remaining wei
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _1296 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _1313 = mem[_1296]
                                                        require mem[_1296] == mem[_1296 + 12 len 20]
                                                        if t >= ('cd', 68).length:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                            staticcall address(_1313).getPair(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                _1357 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _1361 = mem[_1357]
                                                                require mem[_1357] == mem[_1357 + 12 len 20]
                                                                if t >= mem[_760]:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    mem[(32 * t) + _760 + 32] = 0
                                                                    if t >= mem[_760 + (32 * ('cd', 68).length) + 32]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[(32 * t) + _760 + (32 * ('cd', 68).length) + 64] = 0
                                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                gas gas_remaining wei
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _1387 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            _1403 = mem[_1387]
                                                                            require mem[_1387] == mem[_1387 + 12 len 20]
                                                                            if t >= ('cd', 68).length:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                staticcall address(_1403).getPair(address arg1, address arg2) with:
                                                                                        gas gas_remaining wei
                                                                                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _1493 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_1493] == mem[_1493 + 12 len 20]
                                                                                    if not mem[_1493 + 12 len 20]:
                                                                                        if t == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            t = t + 1
                                                                                            continue 
                                                                                    else:
                                                                                        staticcall address(_1361).getReserves() with:
                                                                                                gas gas_remaining wei
                                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _1542 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 96
                                                                                            _1563 = mem[_1542]
                                                                                            require mem[_1542] == mem[_1542 + 18 len 14]
                                                                                            _1586 = mem[_1542 + 32]
                                                                                            require mem[_1542 + 32] == mem[_1542 + 50 len 14]
                                                                                            require mem[_1542 + 64] == mem[_1542 + 92 len 4]
                                                                                            if t >= ('cd', 68).length:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                staticcall address(_1361).token0() with:
                                                                                                        gas gas_remaining wei
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _1624 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_1624] == mem[_1624 + 12 len 20]
                                                                                                    if mem[_1624 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                        if t >= ('cd', 68).length:
                                                                                                            revert with 'NH{q', 50
                                                                                                        else:
                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            staticcall address(_1361).token1() with:
                                                                                                                    gas gas_remaining wei
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _1706 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_1706] == mem[_1706 + 12 len 20]
                                                                                                                if mem[_1706 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                    if t == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        t = t + 1
                                                                                                                        continue 
                                                                                                                else:
                                                                                                                    if t >= mem[_760]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        mem[(32 * t) + _760 + 32] = Mask(112, 0, _1586)
                                                                                                                        if t >= mem[_760 + (32 * ('cd', 68).length) + 32]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            mem[(32 * t) + _760 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                            if t == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                t = t + 1
                                                                                                                                continue 
                                                                                                    else:
                                                                                                        if t >= mem[_760]:
                                                                                                            revert with 'NH{q', 50
                                                                                                        else:
                                                                                                            mem[(32 * t) + _760 + 32] = Mask(112, 0, _1563)
                                                                                                            if t >= mem[_760 + (32 * ('cd', 68).length) + 32]:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                mem[(32 * t) + _760 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                if t == -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    t = t + 1
                                                                                                                    continue 
                                                _1827 = mem[_760]
                                                t = 0
                                                u = 0
                                                while t < _1827:
                                                    _1833 = mem[64]
                                                    mem[64] = mem[64] + 128
                                                    mem[_1833] = idx
                                                    mem[_1833 + 32] = s
                                                    if t >= mem[_760]:
                                                        revert with 'NH{q', 50
                                                    else:
                                                        mem[_1833 + 64] = mem[(32 * t) + _760 + 32]
                                                        if t >= mem[_760 + (32 * ('cd', 68).length) + 32]:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            mem[_1833 + 96] = mem[(32 * t) + _760 + (32 * ('cd', 68).length) + 64]
                                                            if u == -1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if u >= mem[96]:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    mem[(32 * u) + 128] = _1833
                                                                    if t == -1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        t = t + 1
                                                                        u = u + 1
                                                                        continue 
                                                if s == -1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    s = s + 1
                                                    continue 
                                            else:
                                                mem[_760 + (32 * ('cd', 68).length) + 64 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                t = 0
                                                while t < ('cd', 68).length:
                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                            gas gas_remaining wei
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _1297 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _1316 = mem[_1297]
                                                        require mem[_1297] == mem[_1297 + 12 len 20]
                                                        if t >= ('cd', 68).length:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                            staticcall address(_1316).getPair(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                _1358 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _1362 = mem[_1358]
                                                                require mem[_1358] == mem[_1358 + 12 len 20]
                                                                if t >= mem[_760]:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    mem[(32 * t) + _760 + 32] = 0
                                                                    if t >= mem[_760 + (32 * ('cd', 68).length) + 32]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[(32 * t) + _760 + (32 * ('cd', 68).length) + 64] = 0
                                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                gas gas_remaining wei
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _1388 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            _1404 = mem[_1388]
                                                                            require mem[_1388] == mem[_1388 + 12 len 20]
                                                                            if t >= ('cd', 68).length:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                staticcall address(_1404).getPair(address arg1, address arg2) with:
                                                                                        gas gas_remaining wei
                                                                                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _1494 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_1494] == mem[_1494 + 12 len 20]
                                                                                    if not mem[_1494 + 12 len 20]:
                                                                                        if t == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            t = t + 1
                                                                                            continue 
                                                                                    else:
                                                                                        staticcall address(_1362).getReserves() with:
                                                                                                gas gas_remaining wei
                                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _1543 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 96
                                                                                            _1564 = mem[_1543]
                                                                                            require mem[_1543] == mem[_1543 + 18 len 14]
                                                                                            _1587 = mem[_1543 + 32]
                                                                                            require mem[_1543 + 32] == mem[_1543 + 50 len 14]
                                                                                            require mem[_1543 + 64] == mem[_1543 + 92 len 4]
                                                                                            if t >= ('cd', 68).length:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                staticcall address(_1362).token0() with:
                                                                                                        gas gas_remaining wei
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _1625 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_1625] == mem[_1625 + 12 len 20]
                                                                                                    if mem[_1625 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                        if t >= ('cd', 68).length:
                                                                                                            revert with 'NH{q', 50
                                                                                                        else:
                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            staticcall address(_1362).token1() with:
                                                                                                                    gas gas_remaining wei
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _1707 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_1707] == mem[_1707 + 12 len 20]
                                                                                                                if mem[_1707 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                    if t == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        t = t + 1
                                                                                                                        continue 
                                                                                                                else:
                                                                                                                    if t >= mem[_760]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        mem[(32 * t) + _760 + 32] = Mask(112, 0, _1587)
                                                                                                                        if t >= mem[_760 + (32 * ('cd', 68).length) + 32]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            mem[(32 * t) + _760 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                            if t == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                t = t + 1
                                                                                                                                continue 
                                                                                                    else:
                                                                                                        if t >= mem[_760]:
                                                                                                            revert with 'NH{q', 50
                                                                                                        else:
                                                                                                            mem[(32 * t) + _760 + 32] = Mask(112, 0, _1564)
                                                                                                            if t >= mem[_760 + (32 * ('cd', 68).length) + 32]:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                mem[(32 * t) + _760 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                if t == -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    t = t + 1
                                                                                                                    continue 
                                                _1828 = mem[_760]
                                                t = 0
                                                u = 0
                                                while t < _1828:
                                                    _1835 = mem[64]
                                                    mem[64] = mem[64] + 128
                                                    mem[_1835] = idx
                                                    mem[_1835 + 32] = s
                                                    if t >= mem[_760]:
                                                        revert with 'NH{q', 50
                                                    else:
                                                        mem[_1835 + 64] = mem[(32 * t) + _760 + 32]
                                                        if t >= mem[_760 + (32 * ('cd', 68).length) + 32]:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            mem[_1835 + 96] = mem[(32 * t) + _760 + (32 * ('cd', 68).length) + 64]
                                                            if u == -1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if u >= mem[96]:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    mem[(32 * u) + 128] = _1835
                                                                    if t == -1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        t = t + 1
                                                                        u = u + 1
                                                                        continue 
                                                if s == -1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    s = s + 1
                                                    continue 
                        if idx == -1:
                            revert with 'NH{q', 17
                        else:
                            idx = idx + 1
                            continue 
                    _370 = mem[64]
                    mem[mem[64]] = 32
                    _372 = mem[96]
                    mem[mem[64] + 32] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 64
                    while s < _372:
                        _737 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_737 + 32]
                        mem[u + 64] = mem[_737 + 64]
                        mem[u + 96] = mem[_737 + 96]
                        s = s + 1
                        t = t + 32
                        u = u + 128
                        continue 
                    return memory
                      from mem[64]
                       len _370 + (128 * _372) + -mem[64] + 64
                else:
                    mem[64] = (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 256
                    mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 128] = 0
                    mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 160] = 0
                    mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 192] = 0
                    mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 224] = 0
                    mem[var36002] = var36001
                    if var36003 - 1:
                        mem[64] = (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 384
                        mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 256] = 0
                        mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 288] = 0
                        mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 320] = 0
                        mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 352] = 0
                        mem[var40002] = var40001
                        if var40003 - 1:
                            mem[64] = (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 512
                            mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 384] = 0
                            mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 416] = 0
                            mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 448] = 0
                            mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 480] = 0
                            mem[var44002] = var44001
                            if var44003 - 1:
                                mem[64] = (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 640
                                mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 512] = 0
                                mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 544] = 0
                                mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 576] = 0
                                mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 608] = 0
                                mem[var48002] = var48001
                                if var48003 - 1:
                                    mem[64] = (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 768
                                    mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 640] = 0
                                    mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 672] = 0
                                    mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 704] = 0
                                    mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 736] = 0
                                    mem[var52002] = var52001
                                    if var52003 - 1:
                                        mem[64] = (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 896
                                        mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 768] = 0
                                        mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 800] = 0
                                        mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 832] = 0
                                        mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 864] = 0
                                        mem[var56002] = var56001
                                        if var56003 - 1:
                                            mem[64] = (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1024
                                            mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 896] = 0
                                            mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 928] = 0
                                            mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 960] = 0
                                            mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 992] = 0
                                            mem[var60002] = var60001
                                            if var60003 - 1:
                                                mem[64] = (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1152
                                                mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1024] = 0
                                                mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1056] = 0
                                                mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1088] = 0
                                                mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1120] = 0
                                                mem[var64002] = var64001
                                                if var64003 - 1:
                                                    if var68003 - 1:
                                                        # nil
                                                    else:
                                                        if var77001 >= ('cd', 36).length:
                                                            # nil
                                                        else:
                                                            # nil
                                                else:
                                                    idx = 0
                                                    while idx < ('cd', 36).length:
                                                        if var100001 >= ('cd', 4).length:
                                                            if idx == -1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            require cd[((32 * var100001) + cd[4] + 36)] == address(cd[((32 * var100001) + cd[4] + 36)])
                                                            if idx >= ('cd', 36).length:
                                                                revert with 'NH{q', 50
                                                            else:
                                                                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                                                if ('cd', 68).length > test266151307():
                                                                    revert with 'NH{q', 65
                                                                else:
                                                                    mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1152] = ('cd', 68).length
                                                                    if not ('cd', 68).length:
                                                                        if ('cd', 68).length > test266151307():
                                                                            revert with 'NH{q', 65
                                                                        else:
                                                                            mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1184] = ('cd', 68).length
                                                                            mem[64] = (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (64 * ('cd', 68).length) + 1216
                                                                            if not ('cd', 68).length:
                                                                                s = 0
                                                                                while s < ('cd', 68).length:
                                                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                            gas gas_remaining wei
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _10224 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        _10235 = mem[_10224]
                                                                                        require mem[_10224] == mem[_10224 + 12 len 20]
                                                                                        if s >= ('cd', 68).length:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            require cd[((32 * s) + cd[68] + 36)] == address(cd[((32 * s) + cd[68] + 36)])
                                                                                            mem[mem[64] + 4] = address(cd[((32 * var100001) + cd[4] + 36)])
                                                                                            mem[mem[64] + 36] = address(cd[((32 * s) + cd[68] + 36)])
                                                                                            staticcall address(_10235).getPair(address arg1, address arg2) with:
                                                                                                    gas gas_remaining wei
                                                                                                   args address(cd[((32 * var100001) + cd[4] + 36)]), address(cd[((32 * s) + cd[68] + 36)])
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _10283 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                _10287 = mem[_10283]
                                                                                                require mem[_10283] == mem[_10283 + 12 len 20]
                                                                                                if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1152]:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1184] = 0
                                                                                                    if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1184]:
                                                                                                        revert with 'NH{q', 50
                                                                                                    else:
                                                                                                        mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1216] = 0
                                                                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                                gas gas_remaining wei
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _10319 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            _10335 = mem[_10319]
                                                                                                            require mem[_10319] == mem[_10319 + 12 len 20]
                                                                                                            if s >= ('cd', 68).length:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                require cd[((32 * s) + cd[68] + 36)] == address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                mem[mem[64] + 4] = address(cd[((32 * var100001) + cd[4] + 36)])
                                                                                                                mem[mem[64] + 36] = address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                staticcall address(_10335).getPair(address arg1, address arg2) with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args address(cd[((32 * var100001) + cd[4] + 36)]), address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _10424 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    require mem[_10424] == mem[_10424 + 12 len 20]
                                                                                                                    if not mem[_10424 + 12 len 20]:
                                                                                                                        if s == -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            s = s + 1
                                                                                                                            continue 
                                                                                                                    else:
                                                                                                                        staticcall address(_10287).getReserves() with:
                                                                                                                                gas gas_remaining wei
                                                                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _10474 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 96
                                                                                                                            _10494 = mem[_10474]
                                                                                                                            require mem[_10474] == mem[_10474 + 18 len 14]
                                                                                                                            _10516 = mem[_10474 + 32]
                                                                                                                            require mem[_10474 + 32] == mem[_10474 + 50 len 14]
                                                                                                                            require mem[_10474 + 64] == mem[_10474 + 92 len 4]
                                                                                                                            if s >= ('cd', 68).length:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                require cd[((32 * s) + cd[68] + 36)] == address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                                staticcall address(_10287).token0() with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _10554 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_10554] == mem[_10554 + 12 len 20]
                                                                                                                                    if mem[_10554 + 12 len 20] != address(cd[((32 * s) + cd[68] + 36)]):
                                                                                                                                        if s >= ('cd', 68).length:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            require cd[((32 * s) + cd[68] + 36)] == address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                                            staticcall address(_10287).token1() with:
                                                                                                                                                    gas gas_remaining wei
                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                _10634 = mem[64]
                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                require mem[_10634] == mem[_10634 + 12 len 20]
                                                                                                                                                if mem[_10634 + 12 len 20] != address(cd[((32 * s) + cd[68] + 36)]):
                                                                                                                                                    if s == -1:
                                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                                    else:
                                                                                                                                                        s = s + 1
                                                                                                                                                        continue 
                                                                                                                                                else:
                                                                                                                                                    if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1152]:
                                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                                    else:
                                                                                                                                                        mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1184] = Mask(112, 0, _10516)
                                                                                                                                                        if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1184]:
                                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                                        else:
                                                                                                                                                            mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1216] = 1
                                                                                                                                                            if s == -1:
                                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                                            else:
                                                                                                                                                                s = s + 1
                                                                                                                                                                continue 
                                                                                                                                    else:
                                                                                                                                        if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1152]:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1184] = Mask(112, 0, _10494)
                                                                                                                                            if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1184]:
                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                            else:
                                                                                                                                                mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1216] = 1
                                                                                                                                                if s == -1:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    s = s + 1
                                                                                                                                                    continue 
                                                                                # nil
                                                                            else:
                                                                                mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1216 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                                                s = 0
                                                                                while s < ('cd', 68).length:
                                                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                            gas gas_remaining wei
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _10225 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        _10238 = mem[_10225]
                                                                                        require mem[_10225] == mem[_10225 + 12 len 20]
                                                                                        if s >= ('cd', 68).length:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            require cd[((32 * s) + cd[68] + 36)] == address(cd[((32 * s) + cd[68] + 36)])
                                                                                            mem[mem[64] + 4] = address(cd[((32 * var100001) + cd[4] + 36)])
                                                                                            mem[mem[64] + 36] = address(cd[((32 * s) + cd[68] + 36)])
                                                                                            staticcall address(_10238).getPair(address arg1, address arg2) with:
                                                                                                    gas gas_remaining wei
                                                                                                   args address(cd[((32 * var100001) + cd[4] + 36)]), address(cd[((32 * s) + cd[68] + 36)])
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _10284 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                _10288 = mem[_10284]
                                                                                                require mem[_10284] == mem[_10284 + 12 len 20]
                                                                                                if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1152]:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1184] = 0
                                                                                                    if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1184]:
                                                                                                        revert with 'NH{q', 50
                                                                                                    else:
                                                                                                        mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1216] = 0
                                                                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                                gas gas_remaining wei
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _10320 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            _10336 = mem[_10320]
                                                                                                            require mem[_10320] == mem[_10320 + 12 len 20]
                                                                                                            if s >= ('cd', 68).length:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                require cd[((32 * s) + cd[68] + 36)] == address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                mem[mem[64] + 4] = address(cd[((32 * var100001) + cd[4] + 36)])
                                                                                                                mem[mem[64] + 36] = address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                staticcall address(_10336).getPair(address arg1, address arg2) with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args address(cd[((32 * var100001) + cd[4] + 36)]), address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _10425 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    require mem[_10425] == mem[_10425 + 12 len 20]
                                                                                                                    if not mem[_10425 + 12 len 20]:
                                                                                                                        if s == -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            s = s + 1
                                                                                                                            continue 
                                                                                                                    else:
                                                                                                                        staticcall address(_10288).getReserves() with:
                                                                                                                                gas gas_remaining wei
                                                                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _10475 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 96
                                                                                                                            _10495 = mem[_10475]
                                                                                                                            require mem[_10475] == mem[_10475 + 18 len 14]
                                                                                                                            _10517 = mem[_10475 + 32]
                                                                                                                            require mem[_10475 + 32] == mem[_10475 + 50 len 14]
                                                                                                                            require mem[_10475 + 64] == mem[_10475 + 92 len 4]
                                                                                                                            if s >= ('cd', 68).length:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                require cd[((32 * s) + cd[68] + 36)] == address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                                staticcall address(_10288).token0() with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _10555 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_10555] == mem[_10555 + 12 len 20]
                                                                                                                                    if mem[_10555 + 12 len 20] != address(cd[((32 * s) + cd[68] + 36)]):
                                                                                                                                        if s >= ('cd', 68).length:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            require cd[((32 * s) + cd[68] + 36)] == address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                                            staticcall address(_10288).token1() with:
                                                                                                                                                    gas gas_remaining wei
                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                _10635 = mem[64]
                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                require mem[_10635] == mem[_10635 + 12 len 20]
                                                                                                                                                if mem[_10635 + 12 len 20] != address(cd[((32 * s) + cd[68] + 36)]):
                                                                                                                                                    if s == -1:
                                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                                    else:
                                                                                                                                                        s = s + 1
                                                                                                                                                        continue 
                                                                                                                                                else:
                                                                                                                                                    if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1152]:
                                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                                    else:
                                                                                                                                                        mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1184] = Mask(112, 0, _10517)
                                                                                                                                                        if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1184]:
                                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                                        else:
                                                                                                                                                            mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1216] = 1
                                                                                                                                                            if s == -1:
                                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                                            else:
                                                                                                                                                                s = s + 1
                                                                                                                                                                continue 
                                                                                                                                    else:
                                                                                                                                        if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1152]:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1184] = Mask(112, 0, _10495)
                                                                                                                                            if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1184]:
                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                            else:
                                                                                                                                                mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1216] = 1
                                                                                                                                                if s == -1:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    s = s + 1
                                                                                                                                                    continue 
                                                                                # nil
                                                                    else:
                                                                        mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1184 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                                        if ('cd', 68).length > test266151307():
                                                                            revert with 'NH{q', 65
                                                                        else:
                                                                            mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1184] = ('cd', 68).length
                                                                            mem[64] = (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (64 * ('cd', 68).length) + 1216
                                                                            if not ('cd', 68).length:
                                                                                s = 0
                                                                                while s < ('cd', 68).length:
                                                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                            gas gas_remaining wei
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _10226 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        _10241 = mem[_10226]
                                                                                        require mem[_10226] == mem[_10226 + 12 len 20]
                                                                                        if s >= ('cd', 68).length:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            require cd[((32 * s) + cd[68] + 36)] == address(cd[((32 * s) + cd[68] + 36)])
                                                                                            mem[mem[64] + 4] = address(cd[((32 * var100001) + cd[4] + 36)])
                                                                                            mem[mem[64] + 36] = address(cd[((32 * s) + cd[68] + 36)])
                                                                                            staticcall address(_10241).getPair(address arg1, address arg2) with:
                                                                                                    gas gas_remaining wei
                                                                                                   args address(cd[((32 * var100001) + cd[4] + 36)]), address(cd[((32 * s) + cd[68] + 36)])
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _10285 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                _10289 = mem[_10285]
                                                                                                require mem[_10285] == mem[_10285 + 12 len 20]
                                                                                                if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1152]:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1184] = 0
                                                                                                    if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1184]:
                                                                                                        revert with 'NH{q', 50
                                                                                                    else:
                                                                                                        mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1216] = 0
                                                                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                                gas gas_remaining wei
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _10321 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            _10337 = mem[_10321]
                                                                                                            require mem[_10321] == mem[_10321 + 12 len 20]
                                                                                                            if s >= ('cd', 68).length:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                require cd[((32 * s) + cd[68] + 36)] == address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                mem[mem[64] + 4] = address(cd[((32 * var100001) + cd[4] + 36)])
                                                                                                                mem[mem[64] + 36] = address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                staticcall address(_10337).getPair(address arg1, address arg2) with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args address(cd[((32 * var100001) + cd[4] + 36)]), address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _10426 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    require mem[_10426] == mem[_10426 + 12 len 20]
                                                                                                                    if not mem[_10426 + 12 len 20]:
                                                                                                                        if s == -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            s = s + 1
                                                                                                                            continue 
                                                                                                                    else:
                                                                                                                        staticcall address(_10289).getReserves() with:
                                                                                                                                gas gas_remaining wei
                                                                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _10476 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 96
                                                                                                                            _10496 = mem[_10476]
                                                                                                                            require mem[_10476] == mem[_10476 + 18 len 14]
                                                                                                                            _10518 = mem[_10476 + 32]
                                                                                                                            require mem[_10476 + 32] == mem[_10476 + 50 len 14]
                                                                                                                            require mem[_10476 + 64] == mem[_10476 + 92 len 4]
                                                                                                                            if s >= ('cd', 68).length:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                require cd[((32 * s) + cd[68] + 36)] == address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                                staticcall address(_10289).token0() with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _10556 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_10556] == mem[_10556 + 12 len 20]
                                                                                                                                    if mem[_10556 + 12 len 20] != address(cd[((32 * s) + cd[68] + 36)]):
                                                                                                                                        if s >= ('cd', 68).length:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            require cd[((32 * s) + cd[68] + 36)] == address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                                            staticcall address(_10289).token1() with:
                                                                                                                                                    gas gas_remaining wei
                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                _10636 = mem[64]
                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                require mem[_10636] == mem[_10636 + 12 len 20]
                                                                                                                                                if mem[_10636 + 12 len 20] != address(cd[((32 * s) + cd[68] + 36)]):
                                                                                                                                                    if s == -1:
                                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                                    else:
                                                                                                                                                        s = s + 1
                                                                                                                                                        continue 
                                                                                                                                                else:
                                                                                                                                                    if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1152]:
                                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                                    else:
                                                                                                                                                        mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1184] = Mask(112, 0, _10518)
                                                                                                                                                        if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1184]:
                                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                                        else:
                                                                                                                                                            mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1216] = 1
                                                                                                                                                            if s == -1:
                                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                                            else:
                                                                                                                                                                s = s + 1
                                                                                                                                                                continue 
                                                                                                                                    else:
                                                                                                                                        if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1152]:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1184] = Mask(112, 0, _10496)
                                                                                                                                            if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1184]:
                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                            else:
                                                                                                                                                mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1216] = 1
                                                                                                                                                if s == -1:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    s = s + 1
                                                                                                                                                    continue 
                                                                                # nil
                                                                            else:
                                                                                mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1216 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                                                s = 0
                                                                                while s < ('cd', 68).length:
                                                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                            gas gas_remaining wei
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _10227 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        _10244 = mem[_10227]
                                                                                        require mem[_10227] == mem[_10227 + 12 len 20]
                                                                                        if s >= ('cd', 68).length:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            require cd[((32 * s) + cd[68] + 36)] == address(cd[((32 * s) + cd[68] + 36)])
                                                                                            mem[mem[64] + 4] = address(cd[((32 * var100001) + cd[4] + 36)])
                                                                                            mem[mem[64] + 36] = address(cd[((32 * s) + cd[68] + 36)])
                                                                                            staticcall address(_10244).getPair(address arg1, address arg2) with:
                                                                                                    gas gas_remaining wei
                                                                                                   args address(cd[((32 * var100001) + cd[4] + 36)]), address(cd[((32 * s) + cd[68] + 36)])
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _10286 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                _10290 = mem[_10286]
                                                                                                require mem[_10286] == mem[_10286 + 12 len 20]
                                                                                                if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1152]:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1184] = 0
                                                                                                    if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1184]:
                                                                                                        revert with 'NH{q', 50
                                                                                                    else:
                                                                                                        mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1216] = 0
                                                                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                                gas gas_remaining wei
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _10322 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            _10338 = mem[_10322]
                                                                                                            require mem[_10322] == mem[_10322 + 12 len 20]
                                                                                                            if s >= ('cd', 68).length:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                require cd[((32 * s) + cd[68] + 36)] == address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                mem[mem[64] + 4] = address(cd[((32 * var100001) + cd[4] + 36)])
                                                                                                                mem[mem[64] + 36] = address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                staticcall address(_10338).getPair(address arg1, address arg2) with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args address(cd[((32 * var100001) + cd[4] + 36)]), address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _10427 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    require mem[_10427] == mem[_10427 + 12 len 20]
                                                                                                                    if not mem[_10427 + 12 len 20]:
                                                                                                                        if s == -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            s = s + 1
                                                                                                                            continue 
                                                                                                                    else:
                                                                                                                        staticcall address(_10290).getReserves() with:
                                                                                                                                gas gas_remaining wei
                                                                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _10477 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 96
                                                                                                                            _10497 = mem[_10477]
                                                                                                                            require mem[_10477] == mem[_10477 + 18 len 14]
                                                                                                                            _10519 = mem[_10477 + 32]
                                                                                                                            require mem[_10477 + 32] == mem[_10477 + 50 len 14]
                                                                                                                            require mem[_10477 + 64] == mem[_10477 + 92 len 4]
                                                                                                                            if s >= ('cd', 68).length:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                require cd[((32 * s) + cd[68] + 36)] == address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                                staticcall address(_10290).token0() with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _10557 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_10557] == mem[_10557 + 12 len 20]
                                                                                                                                    if mem[_10557 + 12 len 20] != address(cd[((32 * s) + cd[68] + 36)]):
                                                                                                                                        if s >= ('cd', 68).length:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            require cd[((32 * s) + cd[68] + 36)] == address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                                            staticcall address(_10290).token1() with:
                                                                                                                                                    gas gas_remaining wei
                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                _10637 = mem[64]
                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                require mem[_10637] == mem[_10637 + 12 len 20]
                                                                                                                                                if mem[_10637 + 12 len 20] != address(cd[((32 * s) + cd[68] + 36)]):
                                                                                                                                                    if s == -1:
                                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                                    else:
                                                                                                                                                        s = s + 1
                                                                                                                                                        continue 
                                                                                                                                                else:
                                                                                                                                                    if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1152]:
                                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                                    else:
                                                                                                                                                        mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1184] = Mask(112, 0, _10519)
                                                                                                                                                        if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1184]:
                                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                                        else:
                                                                                                                                                            mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1216] = 1
                                                                                                                                                            if s == -1:
                                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                                            else:
                                                                                                                                                                s = s + 1
                                                                                                                                                                continue 
                                                                                                                                    else:
                                                                                                                                        if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1152]:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1184] = Mask(112, 0, _10497)
                                                                                                                                            if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1184]:
                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                            else:
                                                                                                                                                mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1216] = 1
                                                                                                                                                if s == -1:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    s = s + 1
                                                                                                                                                    continue 
                                                                                # nil
                                                    mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1152] = 32
                                                    mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1184] = ('cd', 4).length * ('cd', 36).length * ('cd', 68).length
                                                    s = 0
                                                    t = 128
                                                    u = (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1216
                                                    while s < mem[96]:
                                                        _9642 = mem[t]
                                                        mem[u] = mem[mem[t]]
                                                        mem[u + 32] = mem[_9642 + 32]
                                                        mem[u + 64] = mem[_9642 + 64]
                                                        mem[u + 96] = mem[_9642 + 96]
                                                        s = s + 1
                                                        t = t + 32
                                                        u = u + 128
                                                        continue 
                                                    return memory
                                                      from mem[64]
                                                       len (162 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + -mem[64] + 1216
                                            else:
                                                idx = 0
                                                while idx < ('cd', 36).length:
                                                    s = 0
                                                    while s < ('cd', 4).length:
                                                        require cd[((32 * s) + cd[4] + 36)] == address(cd[((32 * s) + cd[4] + 36)])
                                                        if idx >= ('cd', 36).length:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                                            if ('cd', 68).length > test266151307():
                                                                revert with 'NH{q', 65
                                                            else:
                                                                _8572 = mem[64]
                                                                mem[mem[64]] = ('cd', 68).length
                                                                if not ('cd', 68).length:
                                                                    if ('cd', 68).length > test266151307():
                                                                        revert with 'NH{q', 65
                                                                    else:
                                                                        _8573 = mem[64] + (32 * ('cd', 68).length) + 32
                                                                        mem[mem[64] + (32 * ('cd', 68).length) + 32] = ('cd', 68).length
                                                                        mem[64] = mem[64] + (64 * ('cd', 68).length) + 64
                                                                        if not ('cd', 68).length:
                                                                            t = 0
                                                                            while t < ('cd', 68).length:
                                                                                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                        gas gas_remaining wei
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _9108 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    _9119 = mem[_9108]
                                                                                    require mem[_9108] == mem[_9108 + 12 len 20]
                                                                                    if t >= ('cd', 68).length:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                        staticcall address(_9119).getPair(address arg1, address arg2) with:
                                                                                                gas gas_remaining wei
                                                                                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _9167 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            _9171 = mem[_9167]
                                                                                            require mem[_9167] == mem[_9167 + 12 len 20]
                                                                                            if t >= mem[_8572]:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                mem[(32 * t) + _8572 + 32] = 0
                                                                                                if t >= mem[_8573]:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    mem[(32 * t) + _8573 + 32] = 0
                                                                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                            gas gas_remaining wei
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _9203 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        _9219 = mem[_9203]
                                                                                                        require mem[_9203] == mem[_9203 + 12 len 20]
                                                                                                        if t >= ('cd', 68).length:
                                                                                                            revert with 'NH{q', 50
                                                                                                        else:
                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            staticcall address(_9219).getPair(address arg1, address arg2) with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _9308 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_9308] == mem[_9308 + 12 len 20]
                                                                                                                if not mem[_9308 + 12 len 20]:
                                                                                                                    if t == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        t = t + 1
                                                                                                                        continue 
                                                                                                                else:
                                                                                                                    staticcall address(_9171).getReserves() with:
                                                                                                                            gas gas_remaining wei
                                                                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _9358 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 96
                                                                                                                        _9378 = mem[_9358]
                                                                                                                        require mem[_9358] == mem[_9358 + 18 len 14]
                                                                                                                        _9400 = mem[_9358 + 32]
                                                                                                                        require mem[_9358 + 32] == mem[_9358 + 50 len 14]
                                                                                                                        require mem[_9358 + 64] == mem[_9358 + 92 len 4]
                                                                                                                        if t >= ('cd', 68).length:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                            staticcall address(_9171).token0() with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _9438 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                require mem[_9438] == mem[_9438 + 12 len 20]
                                                                                                                                if mem[_9438 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                    if t >= ('cd', 68).length:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                                        staticcall address(_9171).token1() with:
                                                                                                                                                gas gas_remaining wei
                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            _9518 = mem[64]
                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            require mem[_9518] == mem[_9518 + 12 len 20]
                                                                                                                                            if mem[_9518 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                                if t == -1:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    t = t + 1
                                                                                                                                                    continue 
                                                                                                                                            else:
                                                                                                                                                if t >= mem[_8572]:
                                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                                else:
                                                                                                                                                    mem[(32 * t) + _8572 + 32] = Mask(112, 0, _9400)
                                                                                                                                                    if t >= mem[_8573]:
                                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                                    else:
                                                                                                                                                        mem[(32 * t) + _8573 + 32] = 1
                                                                                                                                                        if t == -1:
                                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                                        else:
                                                                                                                                                            t = t + 1
                                                                                                                                                            continue 
                                                                                                                                else:
                                                                                                                                    if t >= mem[_8572]:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * t) + _8572 + 32] = Mask(112, 0, _9378)
                                                                                                                                        if t >= mem[_8573]:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            mem[(32 * t) + _8573 + 32] = 1
                                                                                                                                            if t == -1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                t = t + 1
                                                                                                                                                continue 
                                                                            _9637 = mem[_8572]
                                                                            t = 0
                                                                            u = 0
                                                                            while t < _9637:
                                                                                _9647 = mem[64]
                                                                                mem[64] = mem[64] + 128
                                                                                mem[_9647] = idx
                                                                                mem[_9647 + 32] = s
                                                                                if t >= mem[_8572]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[_9647 + 64] = mem[(32 * t) + _8572 + 32]
                                                                                    if t >= mem[_8573]:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        mem[_9647 + 96] = mem[(32 * t) + _8573 + 32]
                                                                                        if u == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            if u >= mem[96]:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                mem[(32 * u) + 128] = _9647
                                                                                                if t == -1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    t = t + 1
                                                                                                    u = u + 1
                                                                                                    continue 
                                                                            if s == -1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                s = s + 1
                                                                                continue 
                                                                        else:
                                                                            mem[_8573 + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                                            t = 0
                                                                            while t < ('cd', 68).length:
                                                                                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                        gas gas_remaining wei
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _9109 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    _9122 = mem[_9109]
                                                                                    require mem[_9109] == mem[_9109 + 12 len 20]
                                                                                    if t >= ('cd', 68).length:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                        staticcall address(_9122).getPair(address arg1, address arg2) with:
                                                                                                gas gas_remaining wei
                                                                                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _9168 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            _9172 = mem[_9168]
                                                                                            require mem[_9168] == mem[_9168 + 12 len 20]
                                                                                            if t >= mem[_8572]:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                mem[(32 * t) + _8572 + 32] = 0
                                                                                                if t >= mem[_8573]:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    mem[(32 * t) + _8573 + 32] = 0
                                                                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                            gas gas_remaining wei
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _9204 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        _9220 = mem[_9204]
                                                                                                        require mem[_9204] == mem[_9204 + 12 len 20]
                                                                                                        if t >= ('cd', 68).length:
                                                                                                            revert with 'NH{q', 50
                                                                                                        else:
                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            staticcall address(_9220).getPair(address arg1, address arg2) with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _9309 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_9309] == mem[_9309 + 12 len 20]
                                                                                                                if not mem[_9309 + 12 len 20]:
                                                                                                                    if t == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        t = t + 1
                                                                                                                        continue 
                                                                                                                else:
                                                                                                                    staticcall address(_9172).getReserves() with:
                                                                                                                            gas gas_remaining wei
                                                                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _9359 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 96
                                                                                                                        _9379 = mem[_9359]
                                                                                                                        require mem[_9359] == mem[_9359 + 18 len 14]
                                                                                                                        _9401 = mem[_9359 + 32]
                                                                                                                        require mem[_9359 + 32] == mem[_9359 + 50 len 14]
                                                                                                                        require mem[_9359 + 64] == mem[_9359 + 92 len 4]
                                                                                                                        if t >= ('cd', 68).length:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                            staticcall address(_9172).token0() with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _9439 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                require mem[_9439] == mem[_9439 + 12 len 20]
                                                                                                                                if mem[_9439 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                    if t >= ('cd', 68).length:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                                        staticcall address(_9172).token1() with:
                                                                                                                                                gas gas_remaining wei
                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            _9519 = mem[64]
                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            require mem[_9519] == mem[_9519 + 12 len 20]
                                                                                                                                            if mem[_9519 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                                if t == -1:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    t = t + 1
                                                                                                                                                    continue 
                                                                                                                                            else:
                                                                                                                                                if t >= mem[_8572]:
                                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                                else:
                                                                                                                                                    mem[(32 * t) + _8572 + 32] = Mask(112, 0, _9401)
                                                                                                                                                    if t >= mem[_8573]:
                                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                                    else:
                                                                                                                                                        mem[(32 * t) + _8573 + 32] = 1
                                                                                                                                                        if t == -1:
                                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                                        else:
                                                                                                                                                            t = t + 1
                                                                                                                                                            continue 
                                                                                                                                else:
                                                                                                                                    if t >= mem[_8572]:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * t) + _8572 + 32] = Mask(112, 0, _9379)
                                                                                                                                        if t >= mem[_8573]:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            mem[(32 * t) + _8573 + 32] = 1
                                                                                                                                            if t == -1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                t = t + 1
                                                                                                                                                continue 
                                                                            _9638 = mem[_8572]
                                                                            t = 0
                                                                            u = 0
                                                                            while t < _9638:
                                                                                _9649 = mem[64]
                                                                                mem[64] = mem[64] + 128
                                                                                mem[_9649] = idx
                                                                                mem[_9649 + 32] = s
                                                                                if t >= mem[_8572]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[_9649 + 64] = mem[(32 * t) + _8572 + 32]
                                                                                    if t >= mem[_8573]:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        mem[_9649 + 96] = mem[(32 * t) + _8573 + 32]
                                                                                        if u == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            if u >= mem[96]:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                mem[(32 * u) + 128] = _9649
                                                                                                if t == -1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    t = t + 1
                                                                                                    u = u + 1
                                                                                                    continue 
                                                                            if s == -1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                s = s + 1
                                                                                continue 
                                                                else:
                                                                    mem[mem[64] + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                                    if ('cd', 68).length > test266151307():
                                                                        revert with 'NH{q', 65
                                                                    else:
                                                                        mem[mem[64] + (32 * ('cd', 68).length) + 32] = ('cd', 68).length
                                                                        mem[64] = mem[64] + (64 * ('cd', 68).length) + 64
                                                                        if not ('cd', 68).length:
                                                                            t = 0
                                                                            while t < ('cd', 68).length:
                                                                                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                        gas gas_remaining wei
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _9110 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    _9125 = mem[_9110]
                                                                                    require mem[_9110] == mem[_9110 + 12 len 20]
                                                                                    if t >= ('cd', 68).length:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                        staticcall address(_9125).getPair(address arg1, address arg2) with:
                                                                                                gas gas_remaining wei
                                                                                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _9169 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            _9173 = mem[_9169]
                                                                                            require mem[_9169] == mem[_9169 + 12 len 20]
                                                                                            if t >= mem[_8572]:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                mem[(32 * t) + _8572 + 32] = 0
                                                                                                if t >= mem[_8572 + (32 * ('cd', 68).length) + 32]:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    mem[(32 * t) + _8572 + (32 * ('cd', 68).length) + 64] = 0
                                                                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                            gas gas_remaining wei
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _9205 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        _9221 = mem[_9205]
                                                                                                        require mem[_9205] == mem[_9205 + 12 len 20]
                                                                                                        if t >= ('cd', 68).length:
                                                                                                            revert with 'NH{q', 50
                                                                                                        else:
                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            staticcall address(_9221).getPair(address arg1, address arg2) with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _9310 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_9310] == mem[_9310 + 12 len 20]
                                                                                                                if not mem[_9310 + 12 len 20]:
                                                                                                                    if t == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        t = t + 1
                                                                                                                        continue 
                                                                                                                else:
                                                                                                                    staticcall address(_9173).getReserves() with:
                                                                                                                            gas gas_remaining wei
                                                                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _9360 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 96
                                                                                                                        _9380 = mem[_9360]
                                                                                                                        require mem[_9360] == mem[_9360 + 18 len 14]
                                                                                                                        _9402 = mem[_9360 + 32]
                                                                                                                        require mem[_9360 + 32] == mem[_9360 + 50 len 14]
                                                                                                                        require mem[_9360 + 64] == mem[_9360 + 92 len 4]
                                                                                                                        if t >= ('cd', 68).length:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                            staticcall address(_9173).token0() with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _9440 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                require mem[_9440] == mem[_9440 + 12 len 20]
                                                                                                                                if mem[_9440 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                    if t >= ('cd', 68).length:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                                        staticcall address(_9173).token1() with:
                                                                                                                                                gas gas_remaining wei
                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            _9520 = mem[64]
                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            require mem[_9520] == mem[_9520 + 12 len 20]
                                                                                                                                            if mem[_9520 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                                if t == -1:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    t = t + 1
                                                                                                                                                    continue 
                                                                                                                                            else:
                                                                                                                                                if t >= mem[_8572]:
                                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                                else:
                                                                                                                                                    mem[(32 * t) + _8572 + 32] = Mask(112, 0, _9402)
                                                                                                                                                    if t >= mem[_8572 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                                    else:
                                                                                                                                                        mem[(32 * t) + _8572 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                                        if t == -1:
                                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                                        else:
                                                                                                                                                            t = t + 1
                                                                                                                                                            continue 
                                                                                                                                else:
                                                                                                                                    if t >= mem[_8572]:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * t) + _8572 + 32] = Mask(112, 0, _9380)
                                                                                                                                        if t >= mem[_8572 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            mem[(32 * t) + _8572 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                            if t == -1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                t = t + 1
                                                                                                                                                continue 
                                                                            _9639 = mem[_8572]
                                                                            t = 0
                                                                            u = 0
                                                                            while t < _9639:
                                                                                _9651 = mem[64]
                                                                                mem[64] = mem[64] + 128
                                                                                mem[_9651] = idx
                                                                                mem[_9651 + 32] = s
                                                                                if t >= mem[_8572]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[_9651 + 64] = mem[(32 * t) + _8572 + 32]
                                                                                    if t >= mem[_8572 + (32 * ('cd', 68).length) + 32]:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        mem[_9651 + 96] = mem[(32 * t) + _8572 + (32 * ('cd', 68).length) + 64]
                                                                                        if u == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            if u >= mem[96]:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                mem[(32 * u) + 128] = _9651
                                                                                                if t == -1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    t = t + 1
                                                                                                    u = u + 1
                                                                                                    continue 
                                                                            if s == -1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                s = s + 1
                                                                                continue 
                                                                        else:
                                                                            mem[_8572 + (32 * ('cd', 68).length) + 64 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                                            t = 0
                                                                            while t < ('cd', 68).length:
                                                                                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                        gas gas_remaining wei
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _9111 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    _9128 = mem[_9111]
                                                                                    require mem[_9111] == mem[_9111 + 12 len 20]
                                                                                    if t >= ('cd', 68).length:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                        staticcall address(_9128).getPair(address arg1, address arg2) with:
                                                                                                gas gas_remaining wei
                                                                                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _9170 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            _9174 = mem[_9170]
                                                                                            require mem[_9170] == mem[_9170 + 12 len 20]
                                                                                            if t >= mem[_8572]:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                mem[(32 * t) + _8572 + 32] = 0
                                                                                                if t >= mem[_8572 + (32 * ('cd', 68).length) + 32]:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    mem[(32 * t) + _8572 + (32 * ('cd', 68).length) + 64] = 0
                                                                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                            gas gas_remaining wei
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _9206 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        _9222 = mem[_9206]
                                                                                                        require mem[_9206] == mem[_9206 + 12 len 20]
                                                                                                        if t >= ('cd', 68).length:
                                                                                                            revert with 'NH{q', 50
                                                                                                        else:
                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            staticcall address(_9222).getPair(address arg1, address arg2) with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _9311 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_9311] == mem[_9311 + 12 len 20]
                                                                                                                if not mem[_9311 + 12 len 20]:
                                                                                                                    if t == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        t = t + 1
                                                                                                                        continue 
                                                                                                                else:
                                                                                                                    staticcall address(_9174).getReserves() with:
                                                                                                                            gas gas_remaining wei
                                                                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _9361 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 96
                                                                                                                        _9381 = mem[_9361]
                                                                                                                        require mem[_9361] == mem[_9361 + 18 len 14]
                                                                                                                        _9403 = mem[_9361 + 32]
                                                                                                                        require mem[_9361 + 32] == mem[_9361 + 50 len 14]
                                                                                                                        require mem[_9361 + 64] == mem[_9361 + 92 len 4]
                                                                                                                        if t >= ('cd', 68).length:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                            staticcall address(_9174).token0() with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _9441 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                require mem[_9441] == mem[_9441 + 12 len 20]
                                                                                                                                if mem[_9441 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                    if t >= ('cd', 68).length:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                                        staticcall address(_9174).token1() with:
                                                                                                                                                gas gas_remaining wei
                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            _9521 = mem[64]
                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            require mem[_9521] == mem[_9521 + 12 len 20]
                                                                                                                                            if mem[_9521 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                                if t == -1:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    t = t + 1
                                                                                                                                                    continue 
                                                                                                                                            else:
                                                                                                                                                if t >= mem[_8572]:
                                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                                else:
                                                                                                                                                    mem[(32 * t) + _8572 + 32] = Mask(112, 0, _9403)
                                                                                                                                                    if t >= mem[_8572 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                                    else:
                                                                                                                                                        mem[(32 * t) + _8572 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                                        if t == -1:
                                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                                        else:
                                                                                                                                                            t = t + 1
                                                                                                                                                            continue 
                                                                                                                                else:
                                                                                                                                    if t >= mem[_8572]:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * t) + _8572 + 32] = Mask(112, 0, _9381)
                                                                                                                                        if t >= mem[_8572 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            mem[(32 * t) + _8572 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                            if t == -1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                t = t + 1
                                                                                                                                                continue 
                                                                            _9640 = mem[_8572]
                                                                            t = 0
                                                                            u = 0
                                                                            while t < _9640:
                                                                                _9653 = mem[64]
                                                                                mem[64] = mem[64] + 128
                                                                                mem[_9653] = idx
                                                                                mem[_9653 + 32] = s
                                                                                if t >= mem[_8572]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[_9653 + 64] = mem[(32 * t) + _8572 + 32]
                                                                                    if t >= mem[_8572 + (32 * ('cd', 68).length) + 32]:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        mem[_9653 + 96] = mem[(32 * t) + _8572 + (32 * ('cd', 68).length) + 64]
                                                                                        if u == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            if u >= mem[96]:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                mem[(32 * u) + 128] = _9653
                                                                                                if t == -1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    t = t + 1
                                                                                                    u = u + 1
                                                                                                    continue 
                                                                            if s == -1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                s = s + 1
                                                                                continue 
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                                _7991 = mem[64]
                                                mem[mem[64]] = 32
                                                _7996 = mem[96]
                                                mem[mem[64] + 32] = mem[96]
                                                s = 0
                                                t = 128
                                                u = mem[64] + 64
                                                while s < _7996:
                                                    _8526 = mem[t]
                                                    mem[u] = mem[mem[t]]
                                                    mem[u + 32] = mem[_8526 + 32]
                                                    mem[u + 64] = mem[_8526 + 64]
                                                    mem[u + 96] = mem[_8526 + 96]
                                                    s = s + 1
                                                    t = t + 32
                                                    u = u + 128
                                                    continue 
                                                return memory
                                                  from mem[64]
                                                   len _7991 + (128 * _7996) + -mem[64] + 64
                                        else:
                                            idx = 0
                                            while idx < ('cd', 36).length:
                                                s = 0
                                                while s < ('cd', 4).length:
                                                    require cd[((32 * s) + cd[4] + 36)] == address(cd[((32 * s) + cd[4] + 36)])
                                                    if idx >= ('cd', 36).length:
                                                        revert with 'NH{q', 50
                                                    else:
                                                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                                        if ('cd', 68).length > test266151307():
                                                            revert with 'NH{q', 65
                                                        else:
                                                            _7456 = mem[64]
                                                            mem[mem[64]] = ('cd', 68).length
                                                            if not ('cd', 68).length:
                                                                if ('cd', 68).length > test266151307():
                                                                    revert with 'NH{q', 65
                                                                else:
                                                                    _7457 = mem[64] + (32 * ('cd', 68).length) + 32
                                                                    mem[mem[64] + (32 * ('cd', 68).length) + 32] = ('cd', 68).length
                                                                    mem[64] = mem[64] + (64 * ('cd', 68).length) + 64
                                                                    if not ('cd', 68).length:
                                                                        t = 0
                                                                        while t < ('cd', 68).length:
                                                                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                    gas gas_remaining wei
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _7992 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _8003 = mem[_7992]
                                                                                require mem[_7992] == mem[_7992 + 12 len 20]
                                                                                if t >= ('cd', 68).length:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                    mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                    staticcall address(_8003).getPair(address arg1, address arg2) with:
                                                                                            gas gas_remaining wei
                                                                                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _8051 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        _8055 = mem[_8051]
                                                                                        require mem[_8051] == mem[_8051 + 12 len 20]
                                                                                        if t >= mem[_7456]:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            mem[(32 * t) + _7456 + 32] = 0
                                                                                            if t >= mem[_7457]:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                mem[(32 * t) + _7457 + 32] = 0
                                                                                                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                        gas gas_remaining wei
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _8087 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    _8103 = mem[_8087]
                                                                                                    require mem[_8087] == mem[_8087 + 12 len 20]
                                                                                                    if t >= ('cd', 68).length:
                                                                                                        revert with 'NH{q', 50
                                                                                                    else:
                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                                        staticcall address(_8103).getPair(address arg1, address arg2) with:
                                                                                                                gas gas_remaining wei
                                                                                                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _8192 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_8192] == mem[_8192 + 12 len 20]
                                                                                                            if not mem[_8192 + 12 len 20]:
                                                                                                                if t == -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    t = t + 1
                                                                                                                    continue 
                                                                                                            else:
                                                                                                                staticcall address(_8055).getReserves() with:
                                                                                                                        gas gas_remaining wei
                                                                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _8242 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 96
                                                                                                                    _8262 = mem[_8242]
                                                                                                                    require mem[_8242] == mem[_8242 + 18 len 14]
                                                                                                                    _8284 = mem[_8242 + 32]
                                                                                                                    require mem[_8242 + 32] == mem[_8242 + 50 len 14]
                                                                                                                    require mem[_8242 + 64] == mem[_8242 + 92 len 4]
                                                                                                                    if t >= ('cd', 68).length:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                        staticcall address(_8055).token0() with:
                                                                                                                                gas gas_remaining wei
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _8322 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            require mem[_8322] == mem[_8322 + 12 len 20]
                                                                                                                            if mem[_8322 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                if t >= ('cd', 68).length:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                                    staticcall address(_8055).token1() with:
                                                                                                                                            gas gas_remaining wei
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _8402 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require mem[_8402] == mem[_8402 + 12 len 20]
                                                                                                                                        if mem[_8402 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                            if t == -1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                t = t + 1
                                                                                                                                                continue 
                                                                                                                                        else:
                                                                                                                                            if t >= mem[_7456]:
                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                            else:
                                                                                                                                                mem[(32 * t) + _7456 + 32] = Mask(112, 0, _8284)
                                                                                                                                                if t >= mem[_7457]:
                                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                                else:
                                                                                                                                                    mem[(32 * t) + _7457 + 32] = 1
                                                                                                                                                    if t == -1:
                                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                                    else:
                                                                                                                                                        t = t + 1
                                                                                                                                                        continue 
                                                                                                                            else:
                                                                                                                                if t >= mem[_7456]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    mem[(32 * t) + _7456 + 32] = Mask(112, 0, _8262)
                                                                                                                                    if t >= mem[_7457]:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * t) + _7457 + 32] = 1
                                                                                                                                        if t == -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            t = t + 1
                                                                                                                                            continue 
                                                                        _8521 = mem[_7456]
                                                                        t = 0
                                                                        u = 0
                                                                        while t < _8521:
                                                                            _8531 = mem[64]
                                                                            mem[64] = mem[64] + 128
                                                                            mem[_8531] = idx
                                                                            mem[_8531 + 32] = s
                                                                            if t >= mem[_7456]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[_8531 + 64] = mem[(32 * t) + _7456 + 32]
                                                                                if t >= mem[_7457]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[_8531 + 96] = mem[(32 * t) + _7457 + 32]
                                                                                    if u == -1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        if u >= mem[96]:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            mem[(32 * u) + 128] = _8531
                                                                                            if t == -1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                t = t + 1
                                                                                                u = u + 1
                                                                                                continue 
                                                                        if s == -1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            s = s + 1
                                                                            continue 
                                                                    else:
                                                                        mem[_7457 + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                                        t = 0
                                                                        while t < ('cd', 68).length:
                                                                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                    gas gas_remaining wei
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _7993 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _8006 = mem[_7993]
                                                                                require mem[_7993] == mem[_7993 + 12 len 20]
                                                                                if t >= ('cd', 68).length:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                    mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                    staticcall address(_8006).getPair(address arg1, address arg2) with:
                                                                                            gas gas_remaining wei
                                                                                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _8052 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        _8056 = mem[_8052]
                                                                                        require mem[_8052] == mem[_8052 + 12 len 20]
                                                                                        if t >= mem[_7456]:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            mem[(32 * t) + _7456 + 32] = 0
                                                                                            if t >= mem[_7457]:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                mem[(32 * t) + _7457 + 32] = 0
                                                                                                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                        gas gas_remaining wei
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _8088 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    _8104 = mem[_8088]
                                                                                                    require mem[_8088] == mem[_8088 + 12 len 20]
                                                                                                    if t >= ('cd', 68).length:
                                                                                                        revert with 'NH{q', 50
                                                                                                    else:
                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                                        staticcall address(_8104).getPair(address arg1, address arg2) with:
                                                                                                                gas gas_remaining wei
                                                                                                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _8193 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_8193] == mem[_8193 + 12 len 20]
                                                                                                            if not mem[_8193 + 12 len 20]:
                                                                                                                if t == -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    t = t + 1
                                                                                                                    continue 
                                                                                                            else:
                                                                                                                staticcall address(_8056).getReserves() with:
                                                                                                                        gas gas_remaining wei
                                                                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _8243 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 96
                                                                                                                    _8263 = mem[_8243]
                                                                                                                    require mem[_8243] == mem[_8243 + 18 len 14]
                                                                                                                    _8285 = mem[_8243 + 32]
                                                                                                                    require mem[_8243 + 32] == mem[_8243 + 50 len 14]
                                                                                                                    require mem[_8243 + 64] == mem[_8243 + 92 len 4]
                                                                                                                    if t >= ('cd', 68).length:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                        staticcall address(_8056).token0() with:
                                                                                                                                gas gas_remaining wei
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _8323 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            require mem[_8323] == mem[_8323 + 12 len 20]
                                                                                                                            if mem[_8323 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                if t >= ('cd', 68).length:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                                    staticcall address(_8056).token1() with:
                                                                                                                                            gas gas_remaining wei
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _8403 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require mem[_8403] == mem[_8403 + 12 len 20]
                                                                                                                                        if mem[_8403 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                            if t == -1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                t = t + 1
                                                                                                                                                continue 
                                                                                                                                        else:
                                                                                                                                            if t >= mem[_7456]:
                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                            else:
                                                                                                                                                mem[(32 * t) + _7456 + 32] = Mask(112, 0, _8285)
                                                                                                                                                if t >= mem[_7457]:
                                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                                else:
                                                                                                                                                    mem[(32 * t) + _7457 + 32] = 1
                                                                                                                                                    if t == -1:
                                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                                    else:
                                                                                                                                                        t = t + 1
                                                                                                                                                        continue 
                                                                                                                            else:
                                                                                                                                if t >= mem[_7456]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    mem[(32 * t) + _7456 + 32] = Mask(112, 0, _8263)
                                                                                                                                    if t >= mem[_7457]:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * t) + _7457 + 32] = 1
                                                                                                                                        if t == -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            t = t + 1
                                                                                                                                            continue 
                                                                        _8522 = mem[_7456]
                                                                        t = 0
                                                                        u = 0
                                                                        while t < _8522:
                                                                            _8533 = mem[64]
                                                                            mem[64] = mem[64] + 128
                                                                            mem[_8533] = idx
                                                                            mem[_8533 + 32] = s
                                                                            if t >= mem[_7456]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[_8533 + 64] = mem[(32 * t) + _7456 + 32]
                                                                                if t >= mem[_7457]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[_8533 + 96] = mem[(32 * t) + _7457 + 32]
                                                                                    if u == -1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        if u >= mem[96]:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            mem[(32 * u) + 128] = _8533
                                                                                            if t == -1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                t = t + 1
                                                                                                u = u + 1
                                                                                                continue 
                                                                        if s == -1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            s = s + 1
                                                                            continue 
                                                            else:
                                                                mem[mem[64] + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                                if ('cd', 68).length > test266151307():
                                                                    revert with 'NH{q', 65
                                                                else:
                                                                    mem[mem[64] + (32 * ('cd', 68).length) + 32] = ('cd', 68).length
                                                                    mem[64] = mem[64] + (64 * ('cd', 68).length) + 64
                                                                    if not ('cd', 68).length:
                                                                        t = 0
                                                                        while t < ('cd', 68).length:
                                                                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                    gas gas_remaining wei
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _7994 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _8009 = mem[_7994]
                                                                                require mem[_7994] == mem[_7994 + 12 len 20]
                                                                                if t >= ('cd', 68).length:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                    mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                    staticcall address(_8009).getPair(address arg1, address arg2) with:
                                                                                            gas gas_remaining wei
                                                                                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _8053 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        _8057 = mem[_8053]
                                                                                        require mem[_8053] == mem[_8053 + 12 len 20]
                                                                                        if t >= mem[_7456]:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            mem[(32 * t) + _7456 + 32] = 0
                                                                                            if t >= mem[_7456 + (32 * ('cd', 68).length) + 32]:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                mem[(32 * t) + _7456 + (32 * ('cd', 68).length) + 64] = 0
                                                                                                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                        gas gas_remaining wei
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _8089 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    _8105 = mem[_8089]
                                                                                                    require mem[_8089] == mem[_8089 + 12 len 20]
                                                                                                    if t >= ('cd', 68).length:
                                                                                                        revert with 'NH{q', 50
                                                                                                    else:
                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                                        staticcall address(_8105).getPair(address arg1, address arg2) with:
                                                                                                                gas gas_remaining wei
                                                                                                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _8194 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_8194] == mem[_8194 + 12 len 20]
                                                                                                            if not mem[_8194 + 12 len 20]:
                                                                                                                if t == -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    t = t + 1
                                                                                                                    continue 
                                                                                                            else:
                                                                                                                staticcall address(_8057).getReserves() with:
                                                                                                                        gas gas_remaining wei
                                                                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _8244 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 96
                                                                                                                    _8264 = mem[_8244]
                                                                                                                    require mem[_8244] == mem[_8244 + 18 len 14]
                                                                                                                    _8286 = mem[_8244 + 32]
                                                                                                                    require mem[_8244 + 32] == mem[_8244 + 50 len 14]
                                                                                                                    require mem[_8244 + 64] == mem[_8244 + 92 len 4]
                                                                                                                    if t >= ('cd', 68).length:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                        staticcall address(_8057).token0() with:
                                                                                                                                gas gas_remaining wei
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _8324 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            require mem[_8324] == mem[_8324 + 12 len 20]
                                                                                                                            if mem[_8324 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                if t >= ('cd', 68).length:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                                    staticcall address(_8057).token1() with:
                                                                                                                                            gas gas_remaining wei
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _8404 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require mem[_8404] == mem[_8404 + 12 len 20]
                                                                                                                                        if mem[_8404 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                            if t == -1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                t = t + 1
                                                                                                                                                continue 
                                                                                                                                        else:
                                                                                                                                            if t >= mem[_7456]:
                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                            else:
                                                                                                                                                mem[(32 * t) + _7456 + 32] = Mask(112, 0, _8286)
                                                                                                                                                if t >= mem[_7456 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                                else:
                                                                                                                                                    mem[(32 * t) + _7456 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                                    if t == -1:
                                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                                    else:
                                                                                                                                                        t = t + 1
                                                                                                                                                        continue 
                                                                                                                            else:
                                                                                                                                if t >= mem[_7456]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    mem[(32 * t) + _7456 + 32] = Mask(112, 0, _8264)
                                                                                                                                    if t >= mem[_7456 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * t) + _7456 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                        if t == -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            t = t + 1
                                                                                                                                            continue 
                                                                        _8523 = mem[_7456]
                                                                        t = 0
                                                                        u = 0
                                                                        while t < _8523:
                                                                            _8535 = mem[64]
                                                                            mem[64] = mem[64] + 128
                                                                            mem[_8535] = idx
                                                                            mem[_8535 + 32] = s
                                                                            if t >= mem[_7456]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[_8535 + 64] = mem[(32 * t) + _7456 + 32]
                                                                                if t >= mem[_7456 + (32 * ('cd', 68).length) + 32]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[_8535 + 96] = mem[(32 * t) + _7456 + (32 * ('cd', 68).length) + 64]
                                                                                    if u == -1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        if u >= mem[96]:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            mem[(32 * u) + 128] = _8535
                                                                                            if t == -1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                t = t + 1
                                                                                                u = u + 1
                                                                                                continue 
                                                                        if s == -1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            s = s + 1
                                                                            continue 
                                                                    else:
                                                                        mem[_7456 + (32 * ('cd', 68).length) + 64 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                                        t = 0
                                                                        while t < ('cd', 68).length:
                                                                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                    gas gas_remaining wei
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _7995 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _8012 = mem[_7995]
                                                                                require mem[_7995] == mem[_7995 + 12 len 20]
                                                                                if t >= ('cd', 68).length:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                    mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                    staticcall address(_8012).getPair(address arg1, address arg2) with:
                                                                                            gas gas_remaining wei
                                                                                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _8054 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        _8058 = mem[_8054]
                                                                                        require mem[_8054] == mem[_8054 + 12 len 20]
                                                                                        if t >= mem[_7456]:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            mem[(32 * t) + _7456 + 32] = 0
                                                                                            if t >= mem[_7456 + (32 * ('cd', 68).length) + 32]:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                mem[(32 * t) + _7456 + (32 * ('cd', 68).length) + 64] = 0
                                                                                                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                        gas gas_remaining wei
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _8090 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    _8106 = mem[_8090]
                                                                                                    require mem[_8090] == mem[_8090 + 12 len 20]
                                                                                                    if t >= ('cd', 68).length:
                                                                                                        revert with 'NH{q', 50
                                                                                                    else:
                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                                        staticcall address(_8106).getPair(address arg1, address arg2) with:
                                                                                                                gas gas_remaining wei
                                                                                                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _8195 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_8195] == mem[_8195 + 12 len 20]
                                                                                                            if not mem[_8195 + 12 len 20]:
                                                                                                                if t == -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    t = t + 1
                                                                                                                    continue 
                                                                                                            else:
                                                                                                                staticcall address(_8058).getReserves() with:
                                                                                                                        gas gas_remaining wei
                                                                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _8245 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 96
                                                                                                                    _8265 = mem[_8245]
                                                                                                                    require mem[_8245] == mem[_8245 + 18 len 14]
                                                                                                                    _8287 = mem[_8245 + 32]
                                                                                                                    require mem[_8245 + 32] == mem[_8245 + 50 len 14]
                                                                                                                    require mem[_8245 + 64] == mem[_8245 + 92 len 4]
                                                                                                                    if t >= ('cd', 68).length:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                        staticcall address(_8058).token0() with:
                                                                                                                                gas gas_remaining wei
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _8325 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            require mem[_8325] == mem[_8325 + 12 len 20]
                                                                                                                            if mem[_8325 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                if t >= ('cd', 68).length:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                                    staticcall address(_8058).token1() with:
                                                                                                                                            gas gas_remaining wei
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _8405 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require mem[_8405] == mem[_8405 + 12 len 20]
                                                                                                                                        if mem[_8405 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                            if t == -1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                t = t + 1
                                                                                                                                                continue 
                                                                                                                                        else:
                                                                                                                                            if t >= mem[_7456]:
                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                            else:
                                                                                                                                                mem[(32 * t) + _7456 + 32] = Mask(112, 0, _8287)
                                                                                                                                                if t >= mem[_7456 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                                else:
                                                                                                                                                    mem[(32 * t) + _7456 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                                    if t == -1:
                                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                                    else:
                                                                                                                                                        t = t + 1
                                                                                                                                                        continue 
                                                                                                                            else:
                                                                                                                                if t >= mem[_7456]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    mem[(32 * t) + _7456 + 32] = Mask(112, 0, _8265)
                                                                                                                                    if t >= mem[_7456 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * t) + _7456 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                        if t == -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            t = t + 1
                                                                                                                                            continue 
                                                                        _8524 = mem[_7456]
                                                                        t = 0
                                                                        u = 0
                                                                        while t < _8524:
                                                                            _8537 = mem[64]
                                                                            mem[64] = mem[64] + 128
                                                                            mem[_8537] = idx
                                                                            mem[_8537 + 32] = s
                                                                            if t >= mem[_7456]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[_8537 + 64] = mem[(32 * t) + _7456 + 32]
                                                                                if t >= mem[_7456 + (32 * ('cd', 68).length) + 32]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[_8537 + 96] = mem[(32 * t) + _7456 + (32 * ('cd', 68).length) + 64]
                                                                                    if u == -1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        if u >= mem[96]:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            mem[(32 * u) + 128] = _8537
                                                                                            if t == -1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                t = t + 1
                                                                                                u = u + 1
                                                                                                continue 
                                                                        if s == -1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            s = s + 1
                                                                            continue 
                                                if idx == -1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                            _6875 = mem[64]
                                            mem[mem[64]] = 32
                                            _6880 = mem[96]
                                            mem[mem[64] + 32] = mem[96]
                                            s = 0
                                            t = 128
                                            u = mem[64] + 64
                                            while s < _6880:
                                                _7410 = mem[t]
                                                mem[u] = mem[mem[t]]
                                                mem[u + 32] = mem[_7410 + 32]
                                                mem[u + 64] = mem[_7410 + 64]
                                                mem[u + 96] = mem[_7410 + 96]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 128
                                                continue 
                                            return memory
                                              from mem[64]
                                               len _6875 + (128 * _6880) + -mem[64] + 64
                                    else:
                                        idx = 0
                                        while idx < ('cd', 36).length:
                                            s = 0
                                            while s < ('cd', 4).length:
                                                require cd[((32 * s) + cd[4] + 36)] == address(cd[((32 * s) + cd[4] + 36)])
                                                if idx >= ('cd', 36).length:
                                                    revert with 'NH{q', 50
                                                else:
                                                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                                    if ('cd', 68).length > test266151307():
                                                        revert with 'NH{q', 65
                                                    else:
                                                        _6340 = mem[64]
                                                        mem[mem[64]] = ('cd', 68).length
                                                        if not ('cd', 68).length:
                                                            if ('cd', 68).length > test266151307():
                                                                revert with 'NH{q', 65
                                                            else:
                                                                _6341 = mem[64] + (32 * ('cd', 68).length) + 32
                                                                mem[mem[64] + (32 * ('cd', 68).length) + 32] = ('cd', 68).length
                                                                mem[64] = mem[64] + (64 * ('cd', 68).length) + 64
                                                                if not ('cd', 68).length:
                                                                    t = 0
                                                                    while t < ('cd', 68).length:
                                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                gas gas_remaining wei
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _6876 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            _6887 = mem[_6876]
                                                                            require mem[_6876] == mem[_6876 + 12 len 20]
                                                                            if t >= ('cd', 68).length:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                staticcall address(_6887).getPair(address arg1, address arg2) with:
                                                                                        gas gas_remaining wei
                                                                                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _6935 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    _6939 = mem[_6935]
                                                                                    require mem[_6935] == mem[_6935 + 12 len 20]
                                                                                    if t >= mem[_6340]:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        mem[(32 * t) + _6340 + 32] = 0
                                                                                        if t >= mem[_6341]:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            mem[(32 * t) + _6341 + 32] = 0
                                                                                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                    gas gas_remaining wei
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _6971 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                _6987 = mem[_6971]
                                                                                                require mem[_6971] == mem[_6971 + 12 len 20]
                                                                                                if t >= ('cd', 68).length:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                                    mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                                    staticcall address(_6987).getPair(address arg1, address arg2) with:
                                                                                                            gas gas_remaining wei
                                                                                                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _7076 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        require mem[_7076] == mem[_7076 + 12 len 20]
                                                                                                        if not mem[_7076 + 12 len 20]:
                                                                                                            if t == -1:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                t = t + 1
                                                                                                                continue 
                                                                                                        else:
                                                                                                            staticcall address(_6939).getReserves() with:
                                                                                                                    gas gas_remaining wei
                                                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _7126 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 96
                                                                                                                _7146 = mem[_7126]
                                                                                                                require mem[_7126] == mem[_7126 + 18 len 14]
                                                                                                                _7168 = mem[_7126 + 32]
                                                                                                                require mem[_7126 + 32] == mem[_7126 + 50 len 14]
                                                                                                                require mem[_7126 + 64] == mem[_7126 + 92 len 4]
                                                                                                                if t >= ('cd', 68).length:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                    staticcall address(_6939).token0() with:
                                                                                                                            gas gas_remaining wei
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _7206 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_7206] == mem[_7206 + 12 len 20]
                                                                                                                        if mem[_7206 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                            if t >= ('cd', 68).length:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                                staticcall address(_6939).token1() with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _7286 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_7286] == mem[_7286 + 12 len 20]
                                                                                                                                    if mem[_7286 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                        if t == -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            t = t + 1
                                                                                                                                            continue 
                                                                                                                                    else:
                                                                                                                                        if t >= mem[_6340]:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            mem[(32 * t) + _6340 + 32] = Mask(112, 0, _7168)
                                                                                                                                            if t >= mem[_6341]:
                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                            else:
                                                                                                                                                mem[(32 * t) + _6341 + 32] = 1
                                                                                                                                                if t == -1:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    t = t + 1
                                                                                                                                                    continue 
                                                                                                                        else:
                                                                                                                            if t >= mem[_6340]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                mem[(32 * t) + _6340 + 32] = Mask(112, 0, _7146)
                                                                                                                                if t >= mem[_6341]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    mem[(32 * t) + _6341 + 32] = 1
                                                                                                                                    if t == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        t = t + 1
                                                                                                                                        continue 
                                                                    _7405 = mem[_6340]
                                                                    t = 0
                                                                    u = 0
                                                                    while t < _7405:
                                                                        _7415 = mem[64]
                                                                        mem[64] = mem[64] + 128
                                                                        mem[_7415] = idx
                                                                        mem[_7415 + 32] = s
                                                                        if t >= mem[_6340]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[_7415 + 64] = mem[(32 * t) + _6340 + 32]
                                                                            if t >= mem[_6341]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[_7415 + 96] = mem[(32 * t) + _6341 + 32]
                                                                                if u == -1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    if u >= mem[96]:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        mem[(32 * u) + 128] = _7415
                                                                                        if t == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            t = t + 1
                                                                                            u = u + 1
                                                                                            continue 
                                                                    if s == -1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        s = s + 1
                                                                        continue 
                                                                else:
                                                                    mem[_6341 + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                                    t = 0
                                                                    while t < ('cd', 68).length:
                                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                gas gas_remaining wei
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _6877 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            _6890 = mem[_6877]
                                                                            require mem[_6877] == mem[_6877 + 12 len 20]
                                                                            if t >= ('cd', 68).length:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                staticcall address(_6890).getPair(address arg1, address arg2) with:
                                                                                        gas gas_remaining wei
                                                                                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _6936 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    _6940 = mem[_6936]
                                                                                    require mem[_6936] == mem[_6936 + 12 len 20]
                                                                                    if t >= mem[_6340]:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        mem[(32 * t) + _6340 + 32] = 0
                                                                                        if t >= mem[_6341]:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            mem[(32 * t) + _6341 + 32] = 0
                                                                                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                    gas gas_remaining wei
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _6972 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                _6988 = mem[_6972]
                                                                                                require mem[_6972] == mem[_6972 + 12 len 20]
                                                                                                if t >= ('cd', 68).length:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                                    mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                                    staticcall address(_6988).getPair(address arg1, address arg2) with:
                                                                                                            gas gas_remaining wei
                                                                                                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _7077 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        require mem[_7077] == mem[_7077 + 12 len 20]
                                                                                                        if not mem[_7077 + 12 len 20]:
                                                                                                            if t == -1:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                t = t + 1
                                                                                                                continue 
                                                                                                        else:
                                                                                                            staticcall address(_6940).getReserves() with:
                                                                                                                    gas gas_remaining wei
                                                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _7127 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 96
                                                                                                                _7147 = mem[_7127]
                                                                                                                require mem[_7127] == mem[_7127 + 18 len 14]
                                                                                                                _7169 = mem[_7127 + 32]
                                                                                                                require mem[_7127 + 32] == mem[_7127 + 50 len 14]
                                                                                                                require mem[_7127 + 64] == mem[_7127 + 92 len 4]
                                                                                                                if t >= ('cd', 68).length:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                    staticcall address(_6940).token0() with:
                                                                                                                            gas gas_remaining wei
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _7207 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_7207] == mem[_7207 + 12 len 20]
                                                                                                                        if mem[_7207 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                            if t >= ('cd', 68).length:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                                staticcall address(_6940).token1() with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _7287 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_7287] == mem[_7287 + 12 len 20]
                                                                                                                                    if mem[_7287 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                        if t == -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            t = t + 1
                                                                                                                                            continue 
                                                                                                                                    else:
                                                                                                                                        if t >= mem[_6340]:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            mem[(32 * t) + _6340 + 32] = Mask(112, 0, _7169)
                                                                                                                                            if t >= mem[_6341]:
                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                            else:
                                                                                                                                                mem[(32 * t) + _6341 + 32] = 1
                                                                                                                                                if t == -1:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    t = t + 1
                                                                                                                                                    continue 
                                                                                                                        else:
                                                                                                                            if t >= mem[_6340]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                mem[(32 * t) + _6340 + 32] = Mask(112, 0, _7147)
                                                                                                                                if t >= mem[_6341]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    mem[(32 * t) + _6341 + 32] = 1
                                                                                                                                    if t == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        t = t + 1
                                                                                                                                        continue 
                                                                    _7406 = mem[_6340]
                                                                    t = 0
                                                                    u = 0
                                                                    while t < _7406:
                                                                        _7417 = mem[64]
                                                                        mem[64] = mem[64] + 128
                                                                        mem[_7417] = idx
                                                                        mem[_7417 + 32] = s
                                                                        if t >= mem[_6340]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[_7417 + 64] = mem[(32 * t) + _6340 + 32]
                                                                            if t >= mem[_6341]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[_7417 + 96] = mem[(32 * t) + _6341 + 32]
                                                                                if u == -1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    if u >= mem[96]:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        mem[(32 * u) + 128] = _7417
                                                                                        if t == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            t = t + 1
                                                                                            u = u + 1
                                                                                            continue 
                                                                    if s == -1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        s = s + 1
                                                                        continue 
                                                        else:
                                                            mem[mem[64] + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                            if ('cd', 68).length > test266151307():
                                                                revert with 'NH{q', 65
                                                            else:
                                                                mem[mem[64] + (32 * ('cd', 68).length) + 32] = ('cd', 68).length
                                                                mem[64] = mem[64] + (64 * ('cd', 68).length) + 64
                                                                if not ('cd', 68).length:
                                                                    t = 0
                                                                    while t < ('cd', 68).length:
                                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                gas gas_remaining wei
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _6878 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            _6893 = mem[_6878]
                                                                            require mem[_6878] == mem[_6878 + 12 len 20]
                                                                            if t >= ('cd', 68).length:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                staticcall address(_6893).getPair(address arg1, address arg2) with:
                                                                                        gas gas_remaining wei
                                                                                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _6937 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    _6941 = mem[_6937]
                                                                                    require mem[_6937] == mem[_6937 + 12 len 20]
                                                                                    if t >= mem[_6340]:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        mem[(32 * t) + _6340 + 32] = 0
                                                                                        if t >= mem[_6340 + (32 * ('cd', 68).length) + 32]:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            mem[(32 * t) + _6340 + (32 * ('cd', 68).length) + 64] = 0
                                                                                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                    gas gas_remaining wei
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _6973 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                _6989 = mem[_6973]
                                                                                                require mem[_6973] == mem[_6973 + 12 len 20]
                                                                                                if t >= ('cd', 68).length:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                                    mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                                    staticcall address(_6989).getPair(address arg1, address arg2) with:
                                                                                                            gas gas_remaining wei
                                                                                                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _7078 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        require mem[_7078] == mem[_7078 + 12 len 20]
                                                                                                        if not mem[_7078 + 12 len 20]:
                                                                                                            if t == -1:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                t = t + 1
                                                                                                                continue 
                                                                                                        else:
                                                                                                            staticcall address(_6941).getReserves() with:
                                                                                                                    gas gas_remaining wei
                                                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _7128 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 96
                                                                                                                _7148 = mem[_7128]
                                                                                                                require mem[_7128] == mem[_7128 + 18 len 14]
                                                                                                                _7170 = mem[_7128 + 32]
                                                                                                                require mem[_7128 + 32] == mem[_7128 + 50 len 14]
                                                                                                                require mem[_7128 + 64] == mem[_7128 + 92 len 4]
                                                                                                                if t >= ('cd', 68).length:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                    staticcall address(_6941).token0() with:
                                                                                                                            gas gas_remaining wei
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _7208 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_7208] == mem[_7208 + 12 len 20]
                                                                                                                        if mem[_7208 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                            if t >= ('cd', 68).length:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                                staticcall address(_6941).token1() with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _7288 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_7288] == mem[_7288 + 12 len 20]
                                                                                                                                    if mem[_7288 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                        if t == -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            t = t + 1
                                                                                                                                            continue 
                                                                                                                                    else:
                                                                                                                                        if t >= mem[_6340]:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            mem[(32 * t) + _6340 + 32] = Mask(112, 0, _7170)
                                                                                                                                            if t >= mem[_6340 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                            else:
                                                                                                                                                mem[(32 * t) + _6340 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                                if t == -1:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    t = t + 1
                                                                                                                                                    continue 
                                                                                                                        else:
                                                                                                                            if t >= mem[_6340]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                mem[(32 * t) + _6340 + 32] = Mask(112, 0, _7148)
                                                                                                                                if t >= mem[_6340 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    mem[(32 * t) + _6340 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                    if t == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        t = t + 1
                                                                                                                                        continue 
                                                                    _7407 = mem[_6340]
                                                                    t = 0
                                                                    u = 0
                                                                    while t < _7407:
                                                                        _7419 = mem[64]
                                                                        mem[64] = mem[64] + 128
                                                                        mem[_7419] = idx
                                                                        mem[_7419 + 32] = s
                                                                        if t >= mem[_6340]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[_7419 + 64] = mem[(32 * t) + _6340 + 32]
                                                                            if t >= mem[_6340 + (32 * ('cd', 68).length) + 32]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[_7419 + 96] = mem[(32 * t) + _6340 + (32 * ('cd', 68).length) + 64]
                                                                                if u == -1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    if u >= mem[96]:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        mem[(32 * u) + 128] = _7419
                                                                                        if t == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            t = t + 1
                                                                                            u = u + 1
                                                                                            continue 
                                                                    if s == -1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        s = s + 1
                                                                        continue 
                                                                else:
                                                                    mem[_6340 + (32 * ('cd', 68).length) + 64 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                                    t = 0
                                                                    while t < ('cd', 68).length:
                                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                gas gas_remaining wei
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _6879 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            _6896 = mem[_6879]
                                                                            require mem[_6879] == mem[_6879 + 12 len 20]
                                                                            if t >= ('cd', 68).length:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                staticcall address(_6896).getPair(address arg1, address arg2) with:
                                                                                        gas gas_remaining wei
                                                                                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _6938 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    _6942 = mem[_6938]
                                                                                    require mem[_6938] == mem[_6938 + 12 len 20]
                                                                                    if t >= mem[_6340]:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        mem[(32 * t) + _6340 + 32] = 0
                                                                                        if t >= mem[_6340 + (32 * ('cd', 68).length) + 32]:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            mem[(32 * t) + _6340 + (32 * ('cd', 68).length) + 64] = 0
                                                                                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                    gas gas_remaining wei
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _6974 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                _6990 = mem[_6974]
                                                                                                require mem[_6974] == mem[_6974 + 12 len 20]
                                                                                                if t >= ('cd', 68).length:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                                    mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                                    staticcall address(_6990).getPair(address arg1, address arg2) with:
                                                                                                            gas gas_remaining wei
                                                                                                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _7079 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        require mem[_7079] == mem[_7079 + 12 len 20]
                                                                                                        if not mem[_7079 + 12 len 20]:
                                                                                                            if t == -1:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                t = t + 1
                                                                                                                continue 
                                                                                                        else:
                                                                                                            staticcall address(_6942).getReserves() with:
                                                                                                                    gas gas_remaining wei
                                                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _7129 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 96
                                                                                                                _7149 = mem[_7129]
                                                                                                                require mem[_7129] == mem[_7129 + 18 len 14]
                                                                                                                _7171 = mem[_7129 + 32]
                                                                                                                require mem[_7129 + 32] == mem[_7129 + 50 len 14]
                                                                                                                require mem[_7129 + 64] == mem[_7129 + 92 len 4]
                                                                                                                if t >= ('cd', 68).length:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                    staticcall address(_6942).token0() with:
                                                                                                                            gas gas_remaining wei
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _7209 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_7209] == mem[_7209 + 12 len 20]
                                                                                                                        if mem[_7209 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                            if t >= ('cd', 68).length:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                                staticcall address(_6942).token1() with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _7289 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_7289] == mem[_7289 + 12 len 20]
                                                                                                                                    if mem[_7289 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                        if t == -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            t = t + 1
                                                                                                                                            continue 
                                                                                                                                    else:
                                                                                                                                        if t >= mem[_6340]:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            mem[(32 * t) + _6340 + 32] = Mask(112, 0, _7171)
                                                                                                                                            if t >= mem[_6340 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                            else:
                                                                                                                                                mem[(32 * t) + _6340 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                                if t == -1:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    t = t + 1
                                                                                                                                                    continue 
                                                                                                                        else:
                                                                                                                            if t >= mem[_6340]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                mem[(32 * t) + _6340 + 32] = Mask(112, 0, _7149)
                                                                                                                                if t >= mem[_6340 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    mem[(32 * t) + _6340 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                    if t == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        t = t + 1
                                                                                                                                        continue 
                                                                    _7408 = mem[_6340]
                                                                    t = 0
                                                                    u = 0
                                                                    while t < _7408:
                                                                        _7421 = mem[64]
                                                                        mem[64] = mem[64] + 128
                                                                        mem[_7421] = idx
                                                                        mem[_7421 + 32] = s
                                                                        if t >= mem[_6340]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[_7421 + 64] = mem[(32 * t) + _6340 + 32]
                                                                            if t >= mem[_6340 + (32 * ('cd', 68).length) + 32]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[_7421 + 96] = mem[(32 * t) + _6340 + (32 * ('cd', 68).length) + 64]
                                                                                if u == -1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    if u >= mem[96]:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        mem[(32 * u) + 128] = _7421
                                                                                        if t == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            t = t + 1
                                                                                            u = u + 1
                                                                                            continue 
                                                                    if s == -1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        s = s + 1
                                                                        continue 
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            else:
                                                idx = idx + 1
                                                continue 
                                        _5759 = mem[64]
                                        mem[mem[64]] = 32
                                        _5764 = mem[96]
                                        mem[mem[64] + 32] = mem[96]
                                        s = 0
                                        t = 128
                                        u = mem[64] + 64
                                        while s < _5764:
                                            _6294 = mem[t]
                                            mem[u] = mem[mem[t]]
                                            mem[u + 32] = mem[_6294 + 32]
                                            mem[u + 64] = mem[_6294 + 64]
                                            mem[u + 96] = mem[_6294 + 96]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 128
                                            continue 
                                        return memory
                                          from mem[64]
                                           len _5759 + (128 * _5764) + -mem[64] + 64
                                else:
                                    idx = 0
                                    while idx < ('cd', 36).length:
                                        s = 0
                                        while s < ('cd', 4).length:
                                            require cd[((32 * s) + cd[4] + 36)] == address(cd[((32 * s) + cd[4] + 36)])
                                            if idx >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            else:
                                                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                                if ('cd', 68).length > test266151307():
                                                    revert with 'NH{q', 65
                                                else:
                                                    _5224 = mem[64]
                                                    mem[mem[64]] = ('cd', 68).length
                                                    if not ('cd', 68).length:
                                                        if ('cd', 68).length > test266151307():
                                                            revert with 'NH{q', 65
                                                        else:
                                                            _5225 = mem[64] + (32 * ('cd', 68).length) + 32
                                                            mem[mem[64] + (32 * ('cd', 68).length) + 32] = ('cd', 68).length
                                                            mem[64] = mem[64] + (64 * ('cd', 68).length) + 64
                                                            if not ('cd', 68).length:
                                                                t = 0
                                                                while t < ('cd', 68).length:
                                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                            gas gas_remaining wei
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _5760 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _5771 = mem[_5760]
                                                                        require mem[_5760] == mem[_5760 + 12 len 20]
                                                                        if t >= ('cd', 68).length:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                            staticcall address(_5771).getPair(address arg1, address arg2) with:
                                                                                    gas gas_remaining wei
                                                                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _5819 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _5823 = mem[_5819]
                                                                                require mem[_5819] == mem[_5819 + 12 len 20]
                                                                                if t >= mem[_5224]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[(32 * t) + _5224 + 32] = 0
                                                                                    if t >= mem[_5225]:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        mem[(32 * t) + _5225 + 32] = 0
                                                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                gas gas_remaining wei
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _5855 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            _5871 = mem[_5855]
                                                                                            require mem[_5855] == mem[_5855 + 12 len 20]
                                                                                            if t >= ('cd', 68).length:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                                mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                                staticcall address(_5871).getPair(address arg1, address arg2) with:
                                                                                                        gas gas_remaining wei
                                                                                                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _5960 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_5960] == mem[_5960 + 12 len 20]
                                                                                                    if not mem[_5960 + 12 len 20]:
                                                                                                        if t == -1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            t = t + 1
                                                                                                            continue 
                                                                                                    else:
                                                                                                        staticcall address(_5823).getReserves() with:
                                                                                                                gas gas_remaining wei
                                                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _6010 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 96
                                                                                                            _6030 = mem[_6010]
                                                                                                            require mem[_6010] == mem[_6010 + 18 len 14]
                                                                                                            _6052 = mem[_6010 + 32]
                                                                                                            require mem[_6010 + 32] == mem[_6010 + 50 len 14]
                                                                                                            require mem[_6010 + 64] == mem[_6010 + 92 len 4]
                                                                                                            if t >= ('cd', 68).length:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                staticcall address(_5823).token0() with:
                                                                                                                        gas gas_remaining wei
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _6090 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    require mem[_6090] == mem[_6090 + 12 len 20]
                                                                                                                    if mem[_6090 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                        if t >= ('cd', 68).length:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                            staticcall address(_5823).token1() with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _6170 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                require mem[_6170] == mem[_6170 + 12 len 20]
                                                                                                                                if mem[_6170 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                    if t == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        t = t + 1
                                                                                                                                        continue 
                                                                                                                                else:
                                                                                                                                    if t >= mem[_5224]:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * t) + _5224 + 32] = Mask(112, 0, _6052)
                                                                                                                                        if t >= mem[_5225]:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            mem[(32 * t) + _5225 + 32] = 1
                                                                                                                                            if t == -1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                t = t + 1
                                                                                                                                                continue 
                                                                                                                    else:
                                                                                                                        if t >= mem[_5224]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            mem[(32 * t) + _5224 + 32] = Mask(112, 0, _6030)
                                                                                                                            if t >= mem[_5225]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                mem[(32 * t) + _5225 + 32] = 1
                                                                                                                                if t == -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    t = t + 1
                                                                                                                                    continue 
                                                                _6289 = mem[_5224]
                                                                t = 0
                                                                u = 0
                                                                while t < _6289:
                                                                    _6299 = mem[64]
                                                                    mem[64] = mem[64] + 128
                                                                    mem[_6299] = idx
                                                                    mem[_6299 + 32] = s
                                                                    if t >= mem[_5224]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[_6299 + 64] = mem[(32 * t) + _5224 + 32]
                                                                        if t >= mem[_5225]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[_6299 + 96] = mem[(32 * t) + _5225 + 32]
                                                                            if u == -1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                if u >= mem[96]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[(32 * u) + 128] = _6299
                                                                                    if t == -1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        t = t + 1
                                                                                        u = u + 1
                                                                                        continue 
                                                                if s == -1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    s = s + 1
                                                                    continue 
                                                            else:
                                                                mem[_5225 + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                                t = 0
                                                                while t < ('cd', 68).length:
                                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                            gas gas_remaining wei
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _5761 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _5774 = mem[_5761]
                                                                        require mem[_5761] == mem[_5761 + 12 len 20]
                                                                        if t >= ('cd', 68).length:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                            staticcall address(_5774).getPair(address arg1, address arg2) with:
                                                                                    gas gas_remaining wei
                                                                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _5820 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _5824 = mem[_5820]
                                                                                require mem[_5820] == mem[_5820 + 12 len 20]
                                                                                if t >= mem[_5224]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[(32 * t) + _5224 + 32] = 0
                                                                                    if t >= mem[_5225]:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        mem[(32 * t) + _5225 + 32] = 0
                                                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                gas gas_remaining wei
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _5856 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            _5872 = mem[_5856]
                                                                                            require mem[_5856] == mem[_5856 + 12 len 20]
                                                                                            if t >= ('cd', 68).length:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                                mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                                staticcall address(_5872).getPair(address arg1, address arg2) with:
                                                                                                        gas gas_remaining wei
                                                                                                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _5961 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_5961] == mem[_5961 + 12 len 20]
                                                                                                    if not mem[_5961 + 12 len 20]:
                                                                                                        if t == -1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            t = t + 1
                                                                                                            continue 
                                                                                                    else:
                                                                                                        staticcall address(_5824).getReserves() with:
                                                                                                                gas gas_remaining wei
                                                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _6011 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 96
                                                                                                            _6031 = mem[_6011]
                                                                                                            require mem[_6011] == mem[_6011 + 18 len 14]
                                                                                                            _6053 = mem[_6011 + 32]
                                                                                                            require mem[_6011 + 32] == mem[_6011 + 50 len 14]
                                                                                                            require mem[_6011 + 64] == mem[_6011 + 92 len 4]
                                                                                                            if t >= ('cd', 68).length:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                staticcall address(_5824).token0() with:
                                                                                                                        gas gas_remaining wei
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _6091 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    require mem[_6091] == mem[_6091 + 12 len 20]
                                                                                                                    if mem[_6091 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                        if t >= ('cd', 68).length:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                            staticcall address(_5824).token1() with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _6171 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                require mem[_6171] == mem[_6171 + 12 len 20]
                                                                                                                                if mem[_6171 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                    if t == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        t = t + 1
                                                                                                                                        continue 
                                                                                                                                else:
                                                                                                                                    if t >= mem[_5224]:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * t) + _5224 + 32] = Mask(112, 0, _6053)
                                                                                                                                        if t >= mem[_5225]:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            mem[(32 * t) + _5225 + 32] = 1
                                                                                                                                            if t == -1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                t = t + 1
                                                                                                                                                continue 
                                                                                                                    else:
                                                                                                                        if t >= mem[_5224]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            mem[(32 * t) + _5224 + 32] = Mask(112, 0, _6031)
                                                                                                                            if t >= mem[_5225]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                mem[(32 * t) + _5225 + 32] = 1
                                                                                                                                if t == -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    t = t + 1
                                                                                                                                    continue 
                                                                _6290 = mem[_5224]
                                                                t = 0
                                                                u = 0
                                                                while t < _6290:
                                                                    _6301 = mem[64]
                                                                    mem[64] = mem[64] + 128
                                                                    mem[_6301] = idx
                                                                    mem[_6301 + 32] = s
                                                                    if t >= mem[_5224]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[_6301 + 64] = mem[(32 * t) + _5224 + 32]
                                                                        if t >= mem[_5225]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[_6301 + 96] = mem[(32 * t) + _5225 + 32]
                                                                            if u == -1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                if u >= mem[96]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[(32 * u) + 128] = _6301
                                                                                    if t == -1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        t = t + 1
                                                                                        u = u + 1
                                                                                        continue 
                                                                if s == -1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    s = s + 1
                                                                    continue 
                                                    else:
                                                        mem[mem[64] + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                        if ('cd', 68).length > test266151307():
                                                            revert with 'NH{q', 65
                                                        else:
                                                            mem[mem[64] + (32 * ('cd', 68).length) + 32] = ('cd', 68).length
                                                            mem[64] = mem[64] + (64 * ('cd', 68).length) + 64
                                                            if not ('cd', 68).length:
                                                                t = 0
                                                                while t < ('cd', 68).length:
                                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                            gas gas_remaining wei
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _5762 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _5777 = mem[_5762]
                                                                        require mem[_5762] == mem[_5762 + 12 len 20]
                                                                        if t >= ('cd', 68).length:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                            staticcall address(_5777).getPair(address arg1, address arg2) with:
                                                                                    gas gas_remaining wei
                                                                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _5821 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _5825 = mem[_5821]
                                                                                require mem[_5821] == mem[_5821 + 12 len 20]
                                                                                if t >= mem[_5224]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[(32 * t) + _5224 + 32] = 0
                                                                                    if t >= mem[_5224 + (32 * ('cd', 68).length) + 32]:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        mem[(32 * t) + _5224 + (32 * ('cd', 68).length) + 64] = 0
                                                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                gas gas_remaining wei
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _5857 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            _5873 = mem[_5857]
                                                                                            require mem[_5857] == mem[_5857 + 12 len 20]
                                                                                            if t >= ('cd', 68).length:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                                mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                                staticcall address(_5873).getPair(address arg1, address arg2) with:
                                                                                                        gas gas_remaining wei
                                                                                                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _5962 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_5962] == mem[_5962 + 12 len 20]
                                                                                                    if not mem[_5962 + 12 len 20]:
                                                                                                        if t == -1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            t = t + 1
                                                                                                            continue 
                                                                                                    else:
                                                                                                        staticcall address(_5825).getReserves() with:
                                                                                                                gas gas_remaining wei
                                                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _6012 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 96
                                                                                                            _6032 = mem[_6012]
                                                                                                            require mem[_6012] == mem[_6012 + 18 len 14]
                                                                                                            _6054 = mem[_6012 + 32]
                                                                                                            require mem[_6012 + 32] == mem[_6012 + 50 len 14]
                                                                                                            require mem[_6012 + 64] == mem[_6012 + 92 len 4]
                                                                                                            if t >= ('cd', 68).length:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                staticcall address(_5825).token0() with:
                                                                                                                        gas gas_remaining wei
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _6092 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    require mem[_6092] == mem[_6092 + 12 len 20]
                                                                                                                    if mem[_6092 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                        if t >= ('cd', 68).length:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                            staticcall address(_5825).token1() with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _6172 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                require mem[_6172] == mem[_6172 + 12 len 20]
                                                                                                                                if mem[_6172 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                    if t == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        t = t + 1
                                                                                                                                        continue 
                                                                                                                                else:
                                                                                                                                    if t >= mem[_5224]:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * t) + _5224 + 32] = Mask(112, 0, _6054)
                                                                                                                                        if t >= mem[_5224 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            mem[(32 * t) + _5224 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                            if t == -1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                t = t + 1
                                                                                                                                                continue 
                                                                                                                    else:
                                                                                                                        if t >= mem[_5224]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            mem[(32 * t) + _5224 + 32] = Mask(112, 0, _6032)
                                                                                                                            if t >= mem[_5224 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                mem[(32 * t) + _5224 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                if t == -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    t = t + 1
                                                                                                                                    continue 
                                                                _6291 = mem[_5224]
                                                                t = 0
                                                                u = 0
                                                                while t < _6291:
                                                                    _6303 = mem[64]
                                                                    mem[64] = mem[64] + 128
                                                                    mem[_6303] = idx
                                                                    mem[_6303 + 32] = s
                                                                    if t >= mem[_5224]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[_6303 + 64] = mem[(32 * t) + _5224 + 32]
                                                                        if t >= mem[_5224 + (32 * ('cd', 68).length) + 32]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[_6303 + 96] = mem[(32 * t) + _5224 + (32 * ('cd', 68).length) + 64]
                                                                            if u == -1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                if u >= mem[96]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[(32 * u) + 128] = _6303
                                                                                    if t == -1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        t = t + 1
                                                                                        u = u + 1
                                                                                        continue 
                                                                if s == -1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    s = s + 1
                                                                    continue 
                                                            else:
                                                                mem[_5224 + (32 * ('cd', 68).length) + 64 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                                t = 0
                                                                while t < ('cd', 68).length:
                                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                            gas gas_remaining wei
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _5763 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _5780 = mem[_5763]
                                                                        require mem[_5763] == mem[_5763 + 12 len 20]
                                                                        if t >= ('cd', 68).length:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                            staticcall address(_5780).getPair(address arg1, address arg2) with:
                                                                                    gas gas_remaining wei
                                                                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _5822 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _5826 = mem[_5822]
                                                                                require mem[_5822] == mem[_5822 + 12 len 20]
                                                                                if t >= mem[_5224]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[(32 * t) + _5224 + 32] = 0
                                                                                    if t >= mem[_5224 + (32 * ('cd', 68).length) + 32]:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        mem[(32 * t) + _5224 + (32 * ('cd', 68).length) + 64] = 0
                                                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                gas gas_remaining wei
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _5858 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            _5874 = mem[_5858]
                                                                                            require mem[_5858] == mem[_5858 + 12 len 20]
                                                                                            if t >= ('cd', 68).length:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                                mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                                staticcall address(_5874).getPair(address arg1, address arg2) with:
                                                                                                        gas gas_remaining wei
                                                                                                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _5963 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_5963] == mem[_5963 + 12 len 20]
                                                                                                    if not mem[_5963 + 12 len 20]:
                                                                                                        if t == -1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            t = t + 1
                                                                                                            continue 
                                                                                                    else:
                                                                                                        staticcall address(_5826).getReserves() with:
                                                                                                                gas gas_remaining wei
                                                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _6013 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 96
                                                                                                            _6033 = mem[_6013]
                                                                                                            require mem[_6013] == mem[_6013 + 18 len 14]
                                                                                                            _6055 = mem[_6013 + 32]
                                                                                                            require mem[_6013 + 32] == mem[_6013 + 50 len 14]
                                                                                                            require mem[_6013 + 64] == mem[_6013 + 92 len 4]
                                                                                                            if t >= ('cd', 68).length:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                staticcall address(_5826).token0() with:
                                                                                                                        gas gas_remaining wei
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _6093 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    require mem[_6093] == mem[_6093 + 12 len 20]
                                                                                                                    if mem[_6093 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                        if t >= ('cd', 68).length:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                            staticcall address(_5826).token1() with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _6173 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                require mem[_6173] == mem[_6173 + 12 len 20]
                                                                                                                                if mem[_6173 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                    if t == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        t = t + 1
                                                                                                                                        continue 
                                                                                                                                else:
                                                                                                                                    if t >= mem[_5224]:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * t) + _5224 + 32] = Mask(112, 0, _6055)
                                                                                                                                        if t >= mem[_5224 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            mem[(32 * t) + _5224 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                            if t == -1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                t = t + 1
                                                                                                                                                continue 
                                                                                                                    else:
                                                                                                                        if t >= mem[_5224]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            mem[(32 * t) + _5224 + 32] = Mask(112, 0, _6033)
                                                                                                                            if t >= mem[_5224 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                mem[(32 * t) + _5224 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                if t == -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    t = t + 1
                                                                                                                                    continue 
                                                                _6292 = mem[_5224]
                                                                t = 0
                                                                u = 0
                                                                while t < _6292:
                                                                    _6305 = mem[64]
                                                                    mem[64] = mem[64] + 128
                                                                    mem[_6305] = idx
                                                                    mem[_6305 + 32] = s
                                                                    if t >= mem[_5224]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[_6305 + 64] = mem[(32 * t) + _5224 + 32]
                                                                        if t >= mem[_5224 + (32 * ('cd', 68).length) + 32]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[_6305 + 96] = mem[(32 * t) + _5224 + (32 * ('cd', 68).length) + 64]
                                                                            if u == -1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                if u >= mem[96]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[(32 * u) + 128] = _6305
                                                                                    if t == -1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        t = t + 1
                                                                                        u = u + 1
                                                                                        continue 
                                                                if s == -1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    s = s + 1
                                                                    continue 
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        else:
                                            idx = idx + 1
                                            continue 
                                    _4643 = mem[64]
                                    mem[mem[64]] = 32
                                    _4648 = mem[96]
                                    mem[mem[64] + 32] = mem[96]
                                    s = 0
                                    t = 128
                                    u = mem[64] + 64
                                    while s < _4648:
                                        _5178 = mem[t]
                                        mem[u] = mem[mem[t]]
                                        mem[u + 32] = mem[_5178 + 32]
                                        mem[u + 64] = mem[_5178 + 64]
                                        mem[u + 96] = mem[_5178 + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 128
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _4643 + (128 * _4648) + -mem[64] + 64
                            else:
                                idx = 0
                                while idx < ('cd', 36).length:
                                    s = 0
                                    while s < ('cd', 4).length:
                                        require cd[((32 * s) + cd[4] + 36)] == address(cd[((32 * s) + cd[4] + 36)])
                                        if idx >= ('cd', 36).length:
                                            revert with 'NH{q', 50
                                        else:
                                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                            if ('cd', 68).length > test266151307():
                                                revert with 'NH{q', 65
                                            else:
                                                _4108 = mem[64]
                                                mem[mem[64]] = ('cd', 68).length
                                                if not ('cd', 68).length:
                                                    if ('cd', 68).length > test266151307():
                                                        revert with 'NH{q', 65
                                                    else:
                                                        _4109 = mem[64] + (32 * ('cd', 68).length) + 32
                                                        mem[mem[64] + (32 * ('cd', 68).length) + 32] = ('cd', 68).length
                                                        mem[64] = mem[64] + (64 * ('cd', 68).length) + 64
                                                        if not ('cd', 68).length:
                                                            t = 0
                                                            while t < ('cd', 68).length:
                                                                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                        gas gas_remaining wei
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    _4644 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _4655 = mem[_4644]
                                                                    require mem[_4644] == mem[_4644 + 12 len 20]
                                                                    if t >= ('cd', 68).length:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                        staticcall address(_4655).getPair(address arg1, address arg2) with:
                                                                                gas gas_remaining wei
                                                                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _4703 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            _4707 = mem[_4703]
                                                                            require mem[_4703] == mem[_4703 + 12 len 20]
                                                                            if t >= mem[_4108]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[(32 * t) + _4108 + 32] = 0
                                                                                if t >= mem[_4109]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[(32 * t) + _4109 + 32] = 0
                                                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                            gas gas_remaining wei
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _4739 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        _4755 = mem[_4739]
                                                                                        require mem[_4739] == mem[_4739 + 12 len 20]
                                                                                        if t >= ('cd', 68).length:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                            staticcall address(_4755).getPair(address arg1, address arg2) with:
                                                                                                    gas gas_remaining wei
                                                                                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _4844 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                require mem[_4844] == mem[_4844 + 12 len 20]
                                                                                                if not mem[_4844 + 12 len 20]:
                                                                                                    if t == -1:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        t = t + 1
                                                                                                        continue 
                                                                                                else:
                                                                                                    staticcall address(_4707).getReserves() with:
                                                                                                            gas gas_remaining wei
                                                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _4894 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 96
                                                                                                        _4914 = mem[_4894]
                                                                                                        require mem[_4894] == mem[_4894 + 18 len 14]
                                                                                                        _4936 = mem[_4894 + 32]
                                                                                                        require mem[_4894 + 32] == mem[_4894 + 50 len 14]
                                                                                                        require mem[_4894 + 64] == mem[_4894 + 92 len 4]
                                                                                                        if t >= ('cd', 68).length:
                                                                                                            revert with 'NH{q', 50
                                                                                                        else:
                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            staticcall address(_4707).token0() with:
                                                                                                                    gas gas_remaining wei
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4974 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4974] == mem[_4974 + 12 len 20]
                                                                                                                if mem[_4974 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                    if t >= ('cd', 68).length:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                        staticcall address(_4707).token1() with:
                                                                                                                                gas gas_remaining wei
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _5054 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            require mem[_5054] == mem[_5054 + 12 len 20]
                                                                                                                            if mem[_5054 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                if t == -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    t = t + 1
                                                                                                                                    continue 
                                                                                                                            else:
                                                                                                                                if t >= mem[_4108]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    mem[(32 * t) + _4108 + 32] = Mask(112, 0, _4936)
                                                                                                                                    if t >= mem[_4109]:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * t) + _4109 + 32] = 1
                                                                                                                                        if t == -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            t = t + 1
                                                                                                                                            continue 
                                                                                                                else:
                                                                                                                    if t >= mem[_4108]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        mem[(32 * t) + _4108 + 32] = Mask(112, 0, _4914)
                                                                                                                        if t >= mem[_4109]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            mem[(32 * t) + _4109 + 32] = 1
                                                                                                                            if t == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                t = t + 1
                                                                                                                                continue 
                                                            _5173 = mem[_4108]
                                                            t = 0
                                                            u = 0
                                                            while t < _5173:
                                                                _5183 = mem[64]
                                                                mem[64] = mem[64] + 128
                                                                mem[_5183] = idx
                                                                mem[_5183 + 32] = s
                                                                if t >= mem[_4108]:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    mem[_5183 + 64] = mem[(32 * t) + _4108 + 32]
                                                                    if t >= mem[_4109]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[_5183 + 96] = mem[(32 * t) + _4109 + 32]
                                                                        if u == -1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            if u >= mem[96]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[(32 * u) + 128] = _5183
                                                                                if t == -1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    t = t + 1
                                                                                    u = u + 1
                                                                                    continue 
                                                            if s == -1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                s = s + 1
                                                                continue 
                                                        else:
                                                            mem[_4109 + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                            t = 0
                                                            while t < ('cd', 68).length:
                                                                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                        gas gas_remaining wei
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    _4645 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _4658 = mem[_4645]
                                                                    require mem[_4645] == mem[_4645 + 12 len 20]
                                                                    if t >= ('cd', 68).length:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                        staticcall address(_4658).getPair(address arg1, address arg2) with:
                                                                                gas gas_remaining wei
                                                                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _4704 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            _4708 = mem[_4704]
                                                                            require mem[_4704] == mem[_4704 + 12 len 20]
                                                                            if t >= mem[_4108]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[(32 * t) + _4108 + 32] = 0
                                                                                if t >= mem[_4109]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[(32 * t) + _4109 + 32] = 0
                                                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                            gas gas_remaining wei
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _4740 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        _4756 = mem[_4740]
                                                                                        require mem[_4740] == mem[_4740 + 12 len 20]
                                                                                        if t >= ('cd', 68).length:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                            staticcall address(_4756).getPair(address arg1, address arg2) with:
                                                                                                    gas gas_remaining wei
                                                                                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _4845 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                require mem[_4845] == mem[_4845 + 12 len 20]
                                                                                                if not mem[_4845 + 12 len 20]:
                                                                                                    if t == -1:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        t = t + 1
                                                                                                        continue 
                                                                                                else:
                                                                                                    staticcall address(_4708).getReserves() with:
                                                                                                            gas gas_remaining wei
                                                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _4895 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 96
                                                                                                        _4915 = mem[_4895]
                                                                                                        require mem[_4895] == mem[_4895 + 18 len 14]
                                                                                                        _4937 = mem[_4895 + 32]
                                                                                                        require mem[_4895 + 32] == mem[_4895 + 50 len 14]
                                                                                                        require mem[_4895 + 64] == mem[_4895 + 92 len 4]
                                                                                                        if t >= ('cd', 68).length:
                                                                                                            revert with 'NH{q', 50
                                                                                                        else:
                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            staticcall address(_4708).token0() with:
                                                                                                                    gas gas_remaining wei
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4975 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4975] == mem[_4975 + 12 len 20]
                                                                                                                if mem[_4975 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                    if t >= ('cd', 68).length:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                        staticcall address(_4708).token1() with:
                                                                                                                                gas gas_remaining wei
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _5055 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            require mem[_5055] == mem[_5055 + 12 len 20]
                                                                                                                            if mem[_5055 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                if t == -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    t = t + 1
                                                                                                                                    continue 
                                                                                                                            else:
                                                                                                                                if t >= mem[_4108]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    mem[(32 * t) + _4108 + 32] = Mask(112, 0, _4937)
                                                                                                                                    if t >= mem[_4109]:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * t) + _4109 + 32] = 1
                                                                                                                                        if t == -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            t = t + 1
                                                                                                                                            continue 
                                                                                                                else:
                                                                                                                    if t >= mem[_4108]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        mem[(32 * t) + _4108 + 32] = Mask(112, 0, _4915)
                                                                                                                        if t >= mem[_4109]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            mem[(32 * t) + _4109 + 32] = 1
                                                                                                                            if t == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                t = t + 1
                                                                                                                                continue 
                                                            _5174 = mem[_4108]
                                                            t = 0
                                                            u = 0
                                                            while t < _5174:
                                                                _5185 = mem[64]
                                                                mem[64] = mem[64] + 128
                                                                mem[_5185] = idx
                                                                mem[_5185 + 32] = s
                                                                if t >= mem[_4108]:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    mem[_5185 + 64] = mem[(32 * t) + _4108 + 32]
                                                                    if t >= mem[_4109]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[_5185 + 96] = mem[(32 * t) + _4109 + 32]
                                                                        if u == -1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            if u >= mem[96]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[(32 * u) + 128] = _5185
                                                                                if t == -1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    t = t + 1
                                                                                    u = u + 1
                                                                                    continue 
                                                            if s == -1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                s = s + 1
                                                                continue 
                                                else:
                                                    mem[mem[64] + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                    if ('cd', 68).length > test266151307():
                                                        revert with 'NH{q', 65
                                                    else:
                                                        mem[mem[64] + (32 * ('cd', 68).length) + 32] = ('cd', 68).length
                                                        mem[64] = mem[64] + (64 * ('cd', 68).length) + 64
                                                        if not ('cd', 68).length:
                                                            t = 0
                                                            while t < ('cd', 68).length:
                                                                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                        gas gas_remaining wei
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    _4646 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _4661 = mem[_4646]
                                                                    require mem[_4646] == mem[_4646 + 12 len 20]
                                                                    if t >= ('cd', 68).length:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                        staticcall address(_4661).getPair(address arg1, address arg2) with:
                                                                                gas gas_remaining wei
                                                                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _4705 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            _4709 = mem[_4705]
                                                                            require mem[_4705] == mem[_4705 + 12 len 20]
                                                                            if t >= mem[_4108]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[(32 * t) + _4108 + 32] = 0
                                                                                if t >= mem[_4108 + (32 * ('cd', 68).length) + 32]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[(32 * t) + _4108 + (32 * ('cd', 68).length) + 64] = 0
                                                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                            gas gas_remaining wei
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _4741 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        _4757 = mem[_4741]
                                                                                        require mem[_4741] == mem[_4741 + 12 len 20]
                                                                                        if t >= ('cd', 68).length:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                            staticcall address(_4757).getPair(address arg1, address arg2) with:
                                                                                                    gas gas_remaining wei
                                                                                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _4846 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                require mem[_4846] == mem[_4846 + 12 len 20]
                                                                                                if not mem[_4846 + 12 len 20]:
                                                                                                    if t == -1:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        t = t + 1
                                                                                                        continue 
                                                                                                else:
                                                                                                    staticcall address(_4709).getReserves() with:
                                                                                                            gas gas_remaining wei
                                                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _4896 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 96
                                                                                                        _4916 = mem[_4896]
                                                                                                        require mem[_4896] == mem[_4896 + 18 len 14]
                                                                                                        _4938 = mem[_4896 + 32]
                                                                                                        require mem[_4896 + 32] == mem[_4896 + 50 len 14]
                                                                                                        require mem[_4896 + 64] == mem[_4896 + 92 len 4]
                                                                                                        if t >= ('cd', 68).length:
                                                                                                            revert with 'NH{q', 50
                                                                                                        else:
                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            staticcall address(_4709).token0() with:
                                                                                                                    gas gas_remaining wei
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4976 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4976] == mem[_4976 + 12 len 20]
                                                                                                                if mem[_4976 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                    if t >= ('cd', 68).length:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                        staticcall address(_4709).token1() with:
                                                                                                                                gas gas_remaining wei
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _5056 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            require mem[_5056] == mem[_5056 + 12 len 20]
                                                                                                                            if mem[_5056 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                if t == -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    t = t + 1
                                                                                                                                    continue 
                                                                                                                            else:
                                                                                                                                if t >= mem[_4108]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    mem[(32 * t) + _4108 + 32] = Mask(112, 0, _4938)
                                                                                                                                    if t >= mem[_4108 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * t) + _4108 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                        if t == -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            t = t + 1
                                                                                                                                            continue 
                                                                                                                else:
                                                                                                                    if t >= mem[_4108]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        mem[(32 * t) + _4108 + 32] = Mask(112, 0, _4916)
                                                                                                                        if t >= mem[_4108 + (32 * ('cd', 68).length) + 32]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            mem[(32 * t) + _4108 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                            if t == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                t = t + 1
                                                                                                                                continue 
                                                            _5175 = mem[_4108]
                                                            t = 0
                                                            u = 0
                                                            while t < _5175:
                                                                _5187 = mem[64]
                                                                mem[64] = mem[64] + 128
                                                                mem[_5187] = idx
                                                                mem[_5187 + 32] = s
                                                                if t >= mem[_4108]:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    mem[_5187 + 64] = mem[(32 * t) + _4108 + 32]
                                                                    if t >= mem[_4108 + (32 * ('cd', 68).length) + 32]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[_5187 + 96] = mem[(32 * t) + _4108 + (32 * ('cd', 68).length) + 64]
                                                                        if u == -1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            if u >= mem[96]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[(32 * u) + 128] = _5187
                                                                                if t == -1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    t = t + 1
                                                                                    u = u + 1
                                                                                    continue 
                                                            if s == -1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                s = s + 1
                                                                continue 
                                                        else:
                                                            mem[_4108 + (32 * ('cd', 68).length) + 64 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                            t = 0
                                                            while t < ('cd', 68).length:
                                                                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                        gas gas_remaining wei
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    _4647 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _4664 = mem[_4647]
                                                                    require mem[_4647] == mem[_4647 + 12 len 20]
                                                                    if t >= ('cd', 68).length:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                        staticcall address(_4664).getPair(address arg1, address arg2) with:
                                                                                gas gas_remaining wei
                                                                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _4706 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            _4710 = mem[_4706]
                                                                            require mem[_4706] == mem[_4706 + 12 len 20]
                                                                            if t >= mem[_4108]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[(32 * t) + _4108 + 32] = 0
                                                                                if t >= mem[_4108 + (32 * ('cd', 68).length) + 32]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[(32 * t) + _4108 + (32 * ('cd', 68).length) + 64] = 0
                                                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                            gas gas_remaining wei
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _4742 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        _4758 = mem[_4742]
                                                                                        require mem[_4742] == mem[_4742 + 12 len 20]
                                                                                        if t >= ('cd', 68).length:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                            staticcall address(_4758).getPair(address arg1, address arg2) with:
                                                                                                    gas gas_remaining wei
                                                                                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _4847 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                require mem[_4847] == mem[_4847 + 12 len 20]
                                                                                                if not mem[_4847 + 12 len 20]:
                                                                                                    if t == -1:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        t = t + 1
                                                                                                        continue 
                                                                                                else:
                                                                                                    staticcall address(_4710).getReserves() with:
                                                                                                            gas gas_remaining wei
                                                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _4897 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 96
                                                                                                        _4917 = mem[_4897]
                                                                                                        require mem[_4897] == mem[_4897 + 18 len 14]
                                                                                                        _4939 = mem[_4897 + 32]
                                                                                                        require mem[_4897 + 32] == mem[_4897 + 50 len 14]
                                                                                                        require mem[_4897 + 64] == mem[_4897 + 92 len 4]
                                                                                                        if t >= ('cd', 68).length:
                                                                                                            revert with 'NH{q', 50
                                                                                                        else:
                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            staticcall address(_4710).token0() with:
                                                                                                                    gas gas_remaining wei
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4977 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4977] == mem[_4977 + 12 len 20]
                                                                                                                if mem[_4977 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                    if t >= ('cd', 68).length:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                        staticcall address(_4710).token1() with:
                                                                                                                                gas gas_remaining wei
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _5057 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            require mem[_5057] == mem[_5057 + 12 len 20]
                                                                                                                            if mem[_5057 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                if t == -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    t = t + 1
                                                                                                                                    continue 
                                                                                                                            else:
                                                                                                                                if t >= mem[_4108]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    mem[(32 * t) + _4108 + 32] = Mask(112, 0, _4939)
                                                                                                                                    if t >= mem[_4108 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * t) + _4108 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                        if t == -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            t = t + 1
                                                                                                                                            continue 
                                                                                                                else:
                                                                                                                    if t >= mem[_4108]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        mem[(32 * t) + _4108 + 32] = Mask(112, 0, _4917)
                                                                                                                        if t >= mem[_4108 + (32 * ('cd', 68).length) + 32]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            mem[(32 * t) + _4108 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                            if t == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                t = t + 1
                                                                                                                                continue 
                                                            _5176 = mem[_4108]
                                                            t = 0
                                                            u = 0
                                                            while t < _5176:
                                                                _5189 = mem[64]
                                                                mem[64] = mem[64] + 128
                                                                mem[_5189] = idx
                                                                mem[_5189 + 32] = s
                                                                if t >= mem[_4108]:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    mem[_5189 + 64] = mem[(32 * t) + _4108 + 32]
                                                                    if t >= mem[_4108 + (32 * ('cd', 68).length) + 32]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[_5189 + 96] = mem[(32 * t) + _4108 + (32 * ('cd', 68).length) + 64]
                                                                        if u == -1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            if u >= mem[96]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[(32 * u) + 128] = _5189
                                                                                if t == -1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    t = t + 1
                                                                                    u = u + 1
                                                                                    continue 
                                                            if s == -1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                s = s + 1
                                                                continue 
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    else:
                                        idx = idx + 1
                                        continue 
                                _3527 = mem[64]
                                mem[mem[64]] = 32
                                _3532 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                s = 0
                                t = 128
                                u = mem[64] + 64
                                while s < _3532:
                                    _4062 = mem[t]
                                    mem[u] = mem[mem[t]]
                                    mem[u + 32] = mem[_4062 + 32]
                                    mem[u + 64] = mem[_4062 + 64]
                                    mem[u + 96] = mem[_4062 + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 128
                                    continue 
                                return memory
                                  from mem[64]
                                   len _3527 + (128 * _3532) + -mem[64] + 64
                        else:
                            idx = 0
                            while idx < ('cd', 36).length:
                                s = 0
                                while s < ('cd', 4).length:
                                    require cd[((32 * s) + cd[4] + 36)] == address(cd[((32 * s) + cd[4] + 36)])
                                    if idx >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    else:
                                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                        if ('cd', 68).length > test266151307():
                                            revert with 'NH{q', 65
                                        else:
                                            _2992 = mem[64]
                                            mem[mem[64]] = ('cd', 68).length
                                            if not ('cd', 68).length:
                                                if ('cd', 68).length > test266151307():
                                                    revert with 'NH{q', 65
                                                else:
                                                    _2993 = mem[64] + (32 * ('cd', 68).length) + 32
                                                    mem[mem[64] + (32 * ('cd', 68).length) + 32] = ('cd', 68).length
                                                    mem[64] = mem[64] + (64 * ('cd', 68).length) + 64
                                                    if not ('cd', 68).length:
                                                        t = 0
                                                        while t < ('cd', 68).length:
                                                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                    gas gas_remaining wei
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                _3528 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _3539 = mem[_3528]
                                                                require mem[_3528] == mem[_3528 + 12 len 20]
                                                                if t >= ('cd', 68).length:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                    mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                    staticcall address(_3539).getPair(address arg1, address arg2) with:
                                                                            gas gas_remaining wei
                                                                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _3587 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _3591 = mem[_3587]
                                                                        require mem[_3587] == mem[_3587 + 12 len 20]
                                                                        if t >= mem[_2992]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[(32 * t) + _2992 + 32] = 0
                                                                            if t >= mem[_2993]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[(32 * t) + _2993 + 32] = 0
                                                                                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                        gas gas_remaining wei
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _3623 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    _3639 = mem[_3623]
                                                                                    require mem[_3623] == mem[_3623 + 12 len 20]
                                                                                    if t >= ('cd', 68).length:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                        staticcall address(_3639).getPair(address arg1, address arg2) with:
                                                                                                gas gas_remaining wei
                                                                                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _3728 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            require mem[_3728] == mem[_3728 + 12 len 20]
                                                                                            if not mem[_3728 + 12 len 20]:
                                                                                                if t == -1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    t = t + 1
                                                                                                    continue 
                                                                                            else:
                                                                                                staticcall address(_3591).getReserves() with:
                                                                                                        gas gas_remaining wei
                                                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _3778 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 96
                                                                                                    _3798 = mem[_3778]
                                                                                                    require mem[_3778] == mem[_3778 + 18 len 14]
                                                                                                    _3820 = mem[_3778 + 32]
                                                                                                    require mem[_3778 + 32] == mem[_3778 + 50 len 14]
                                                                                                    require mem[_3778 + 64] == mem[_3778 + 92 len 4]
                                                                                                    if t >= ('cd', 68).length:
                                                                                                        revert with 'NH{q', 50
                                                                                                    else:
                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                        staticcall address(_3591).token0() with:
                                                                                                                gas gas_remaining wei
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3858 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3858] == mem[_3858 + 12 len 20]
                                                                                                            if mem[_3858 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                if t >= ('cd', 68).length:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                    staticcall address(_3591).token1() with:
                                                                                                                            gas gas_remaining wei
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _3938 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_3938] == mem[_3938 + 12 len 20]
                                                                                                                        if mem[_3938 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                            if t == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                t = t + 1
                                                                                                                                continue 
                                                                                                                        else:
                                                                                                                            if t >= mem[_2992]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                mem[(32 * t) + _2992 + 32] = Mask(112, 0, _3820)
                                                                                                                                if t >= mem[_2993]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    mem[(32 * t) + _2993 + 32] = 1
                                                                                                                                    if t == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        t = t + 1
                                                                                                                                        continue 
                                                                                                            else:
                                                                                                                if t >= mem[_2992]:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    mem[(32 * t) + _2992 + 32] = Mask(112, 0, _3798)
                                                                                                                    if t >= mem[_2993]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        mem[(32 * t) + _2993 + 32] = 1
                                                                                                                        if t == -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            t = t + 1
                                                                                                                            continue 
                                                        _4057 = mem[_2992]
                                                        t = 0
                                                        u = 0
                                                        while t < _4057:
                                                            _4067 = mem[64]
                                                            mem[64] = mem[64] + 128
                                                            mem[_4067] = idx
                                                            mem[_4067 + 32] = s
                                                            if t >= mem[_2992]:
                                                                revert with 'NH{q', 50
                                                            else:
                                                                mem[_4067 + 64] = mem[(32 * t) + _2992 + 32]
                                                                if t >= mem[_2993]:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    mem[_4067 + 96] = mem[(32 * t) + _2993 + 32]
                                                                    if u == -1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        if u >= mem[96]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[(32 * u) + 128] = _4067
                                                                            if t == -1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                t = t + 1
                                                                                u = u + 1
                                                                                continue 
                                                        if s == -1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            s = s + 1
                                                            continue 
                                                    else:
                                                        mem[_2993 + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                        t = 0
                                                        while t < ('cd', 68).length:
                                                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                    gas gas_remaining wei
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                _3529 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _3542 = mem[_3529]
                                                                require mem[_3529] == mem[_3529 + 12 len 20]
                                                                if t >= ('cd', 68).length:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                    mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                    staticcall address(_3542).getPair(address arg1, address arg2) with:
                                                                            gas gas_remaining wei
                                                                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _3588 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _3592 = mem[_3588]
                                                                        require mem[_3588] == mem[_3588 + 12 len 20]
                                                                        if t >= mem[_2992]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[(32 * t) + _2992 + 32] = 0
                                                                            if t >= mem[_2993]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[(32 * t) + _2993 + 32] = 0
                                                                                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                        gas gas_remaining wei
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _3624 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    _3640 = mem[_3624]
                                                                                    require mem[_3624] == mem[_3624 + 12 len 20]
                                                                                    if t >= ('cd', 68).length:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                        staticcall address(_3640).getPair(address arg1, address arg2) with:
                                                                                                gas gas_remaining wei
                                                                                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _3729 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            require mem[_3729] == mem[_3729 + 12 len 20]
                                                                                            if not mem[_3729 + 12 len 20]:
                                                                                                if t == -1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    t = t + 1
                                                                                                    continue 
                                                                                            else:
                                                                                                staticcall address(_3592).getReserves() with:
                                                                                                        gas gas_remaining wei
                                                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _3779 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 96
                                                                                                    _3799 = mem[_3779]
                                                                                                    require mem[_3779] == mem[_3779 + 18 len 14]
                                                                                                    _3821 = mem[_3779 + 32]
                                                                                                    require mem[_3779 + 32] == mem[_3779 + 50 len 14]
                                                                                                    require mem[_3779 + 64] == mem[_3779 + 92 len 4]
                                                                                                    if t >= ('cd', 68).length:
                                                                                                        revert with 'NH{q', 50
                                                                                                    else:
                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                        staticcall address(_3592).token0() with:
                                                                                                                gas gas_remaining wei
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3859 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3859] == mem[_3859 + 12 len 20]
                                                                                                            if mem[_3859 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                if t >= ('cd', 68).length:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                    staticcall address(_3592).token1() with:
                                                                                                                            gas gas_remaining wei
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _3939 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_3939] == mem[_3939 + 12 len 20]
                                                                                                                        if mem[_3939 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                            if t == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                t = t + 1
                                                                                                                                continue 
                                                                                                                        else:
                                                                                                                            if t >= mem[_2992]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                mem[(32 * t) + _2992 + 32] = Mask(112, 0, _3821)
                                                                                                                                if t >= mem[_2993]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    mem[(32 * t) + _2993 + 32] = 1
                                                                                                                                    if t == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        t = t + 1
                                                                                                                                        continue 
                                                                                                            else:
                                                                                                                if t >= mem[_2992]:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    mem[(32 * t) + _2992 + 32] = Mask(112, 0, _3799)
                                                                                                                    if t >= mem[_2993]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        mem[(32 * t) + _2993 + 32] = 1
                                                                                                                        if t == -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            t = t + 1
                                                                                                                            continue 
                                                        _4058 = mem[_2992]
                                                        t = 0
                                                        u = 0
                                                        while t < _4058:
                                                            _4069 = mem[64]
                                                            mem[64] = mem[64] + 128
                                                            mem[_4069] = idx
                                                            mem[_4069 + 32] = s
                                                            if t >= mem[_2992]:
                                                                revert with 'NH{q', 50
                                                            else:
                                                                mem[_4069 + 64] = mem[(32 * t) + _2992 + 32]
                                                                if t >= mem[_2993]:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    mem[_4069 + 96] = mem[(32 * t) + _2993 + 32]
                                                                    if u == -1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        if u >= mem[96]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[(32 * u) + 128] = _4069
                                                                            if t == -1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                t = t + 1
                                                                                u = u + 1
                                                                                continue 
                                                        if s == -1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            s = s + 1
                                                            continue 
                                            else:
                                                mem[mem[64] + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                if ('cd', 68).length > test266151307():
                                                    revert with 'NH{q', 65
                                                else:
                                                    mem[mem[64] + (32 * ('cd', 68).length) + 32] = ('cd', 68).length
                                                    mem[64] = mem[64] + (64 * ('cd', 68).length) + 64
                                                    if not ('cd', 68).length:
                                                        t = 0
                                                        while t < ('cd', 68).length:
                                                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                    gas gas_remaining wei
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                _3530 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _3545 = mem[_3530]
                                                                require mem[_3530] == mem[_3530 + 12 len 20]
                                                                if t >= ('cd', 68).length:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                    mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                    staticcall address(_3545).getPair(address arg1, address arg2) with:
                                                                            gas gas_remaining wei
                                                                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _3589 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _3593 = mem[_3589]
                                                                        require mem[_3589] == mem[_3589 + 12 len 20]
                                                                        if t >= mem[_2992]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[(32 * t) + _2992 + 32] = 0
                                                                            if t >= mem[_2992 + (32 * ('cd', 68).length) + 32]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[(32 * t) + _2992 + (32 * ('cd', 68).length) + 64] = 0
                                                                                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                        gas gas_remaining wei
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _3625 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    _3641 = mem[_3625]
                                                                                    require mem[_3625] == mem[_3625 + 12 len 20]
                                                                                    if t >= ('cd', 68).length:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                        staticcall address(_3641).getPair(address arg1, address arg2) with:
                                                                                                gas gas_remaining wei
                                                                                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _3730 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            require mem[_3730] == mem[_3730 + 12 len 20]
                                                                                            if not mem[_3730 + 12 len 20]:
                                                                                                if t == -1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    t = t + 1
                                                                                                    continue 
                                                                                            else:
                                                                                                staticcall address(_3593).getReserves() with:
                                                                                                        gas gas_remaining wei
                                                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _3780 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 96
                                                                                                    _3800 = mem[_3780]
                                                                                                    require mem[_3780] == mem[_3780 + 18 len 14]
                                                                                                    _3822 = mem[_3780 + 32]
                                                                                                    require mem[_3780 + 32] == mem[_3780 + 50 len 14]
                                                                                                    require mem[_3780 + 64] == mem[_3780 + 92 len 4]
                                                                                                    if t >= ('cd', 68).length:
                                                                                                        revert with 'NH{q', 50
                                                                                                    else:
                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                        staticcall address(_3593).token0() with:
                                                                                                                gas gas_remaining wei
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3860 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3860] == mem[_3860 + 12 len 20]
                                                                                                            if mem[_3860 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                if t >= ('cd', 68).length:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                    staticcall address(_3593).token1() with:
                                                                                                                            gas gas_remaining wei
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _3940 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_3940] == mem[_3940 + 12 len 20]
                                                                                                                        if mem[_3940 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                            if t == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                t = t + 1
                                                                                                                                continue 
                                                                                                                        else:
                                                                                                                            if t >= mem[_2992]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                mem[(32 * t) + _2992 + 32] = Mask(112, 0, _3822)
                                                                                                                                if t >= mem[_2992 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    mem[(32 * t) + _2992 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                    if t == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        t = t + 1
                                                                                                                                        continue 
                                                                                                            else:
                                                                                                                if t >= mem[_2992]:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    mem[(32 * t) + _2992 + 32] = Mask(112, 0, _3800)
                                                                                                                    if t >= mem[_2992 + (32 * ('cd', 68).length) + 32]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        mem[(32 * t) + _2992 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                        if t == -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            t = t + 1
                                                                                                                            continue 
                                                        _4059 = mem[_2992]
                                                        t = 0
                                                        u = 0
                                                        while t < _4059:
                                                            _4071 = mem[64]
                                                            mem[64] = mem[64] + 128
                                                            mem[_4071] = idx
                                                            mem[_4071 + 32] = s
                                                            if t >= mem[_2992]:
                                                                revert with 'NH{q', 50
                                                            else:
                                                                mem[_4071 + 64] = mem[(32 * t) + _2992 + 32]
                                                                if t >= mem[_2992 + (32 * ('cd', 68).length) + 32]:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    mem[_4071 + 96] = mem[(32 * t) + _2992 + (32 * ('cd', 68).length) + 64]
                                                                    if u == -1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        if u >= mem[96]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[(32 * u) + 128] = _4071
                                                                            if t == -1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                t = t + 1
                                                                                u = u + 1
                                                                                continue 
                                                        if s == -1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            s = s + 1
                                                            continue 
                                                    else:
                                                        mem[_2992 + (32 * ('cd', 68).length) + 64 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                        t = 0
                                                        while t < ('cd', 68).length:
                                                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                    gas gas_remaining wei
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                _3531 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _3548 = mem[_3531]
                                                                require mem[_3531] == mem[_3531 + 12 len 20]
                                                                if t >= ('cd', 68).length:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                    mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                    staticcall address(_3548).getPair(address arg1, address arg2) with:
                                                                            gas gas_remaining wei
                                                                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _3590 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _3594 = mem[_3590]
                                                                        require mem[_3590] == mem[_3590 + 12 len 20]
                                                                        if t >= mem[_2992]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[(32 * t) + _2992 + 32] = 0
                                                                            if t >= mem[_2992 + (32 * ('cd', 68).length) + 32]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[(32 * t) + _2992 + (32 * ('cd', 68).length) + 64] = 0
                                                                                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                        gas gas_remaining wei
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _3626 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    _3642 = mem[_3626]
                                                                                    require mem[_3626] == mem[_3626 + 12 len 20]
                                                                                    if t >= ('cd', 68).length:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                        staticcall address(_3642).getPair(address arg1, address arg2) with:
                                                                                                gas gas_remaining wei
                                                                                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _3731 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            require mem[_3731] == mem[_3731 + 12 len 20]
                                                                                            if not mem[_3731 + 12 len 20]:
                                                                                                if t == -1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    t = t + 1
                                                                                                    continue 
                                                                                            else:
                                                                                                staticcall address(_3594).getReserves() with:
                                                                                                        gas gas_remaining wei
                                                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _3781 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 96
                                                                                                    _3801 = mem[_3781]
                                                                                                    require mem[_3781] == mem[_3781 + 18 len 14]
                                                                                                    _3823 = mem[_3781 + 32]
                                                                                                    require mem[_3781 + 32] == mem[_3781 + 50 len 14]
                                                                                                    require mem[_3781 + 64] == mem[_3781 + 92 len 4]
                                                                                                    if t >= ('cd', 68).length:
                                                                                                        revert with 'NH{q', 50
                                                                                                    else:
                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                        staticcall address(_3594).token0() with:
                                                                                                                gas gas_remaining wei
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3861 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3861] == mem[_3861 + 12 len 20]
                                                                                                            if mem[_3861 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                if t >= ('cd', 68).length:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                    staticcall address(_3594).token1() with:
                                                                                                                            gas gas_remaining wei
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _3941 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_3941] == mem[_3941 + 12 len 20]
                                                                                                                        if mem[_3941 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                            if t == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                t = t + 1
                                                                                                                                continue 
                                                                                                                        else:
                                                                                                                            if t >= mem[_2992]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                mem[(32 * t) + _2992 + 32] = Mask(112, 0, _3823)
                                                                                                                                if t >= mem[_2992 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    mem[(32 * t) + _2992 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                    if t == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        t = t + 1
                                                                                                                                        continue 
                                                                                                            else:
                                                                                                                if t >= mem[_2992]:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    mem[(32 * t) + _2992 + 32] = Mask(112, 0, _3801)
                                                                                                                    if t >= mem[_2992 + (32 * ('cd', 68).length) + 32]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        mem[(32 * t) + _2992 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                        if t == -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            t = t + 1
                                                                                                                            continue 
                                                        _4060 = mem[_2992]
                                                        t = 0
                                                        u = 0
                                                        while t < _4060:
                                                            _4073 = mem[64]
                                                            mem[64] = mem[64] + 128
                                                            mem[_4073] = idx
                                                            mem[_4073 + 32] = s
                                                            if t >= mem[_2992]:
                                                                revert with 'NH{q', 50
                                                            else:
                                                                mem[_4073 + 64] = mem[(32 * t) + _2992 + 32]
                                                                if t >= mem[_2992 + (32 * ('cd', 68).length) + 32]:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    mem[_4073 + 96] = mem[(32 * t) + _2992 + (32 * ('cd', 68).length) + 64]
                                                                    if u == -1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        if u >= mem[96]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[(32 * u) + 128] = _4073
                                                                            if t == -1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                t = t + 1
                                                                                u = u + 1
                                                                                continue 
                                                        if s == -1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            s = s + 1
                                                            continue 
                                if idx == -1:
                                    revert with 'NH{q', 17
                                else:
                                    idx = idx + 1
                                    continue 
                            _2411 = mem[64]
                            mem[mem[64]] = 32
                            _2416 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 64
                            while s < _2416:
                                _2946 = mem[t]
                                mem[u] = mem[mem[t]]
                                mem[u + 32] = mem[_2946 + 32]
                                mem[u + 64] = mem[_2946 + 64]
                                mem[u + 96] = mem[_2946 + 96]
                                s = s + 1
                                t = t + 32
                                u = u + 128
                                continue 
                            return memory
                              from mem[64]
                               len _2411 + (128 * _2416) + -mem[64] + 64
                    else:
                        idx = 0
                        while idx < ('cd', 36).length:
                            s = 0
                            while s < ('cd', 4).length:
                                require cd[((32 * s) + cd[4] + 36)] == address(cd[((32 * s) + cd[4] + 36)])
                                if idx >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                else:
                                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                    if ('cd', 68).length > test266151307():
                                        revert with 'NH{q', 65
                                    else:
                                        _1876 = mem[64]
                                        mem[mem[64]] = ('cd', 68).length
                                        if not ('cd', 68).length:
                                            if ('cd', 68).length > test266151307():
                                                revert with 'NH{q', 65
                                            else:
                                                _1877 = mem[64] + (32 * ('cd', 68).length) + 32
                                                mem[mem[64] + (32 * ('cd', 68).length) + 32] = ('cd', 68).length
                                                mem[64] = mem[64] + (64 * ('cd', 68).length) + 64
                                                if not ('cd', 68).length:
                                                    t = 0
                                                    while t < ('cd', 68).length:
                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                gas gas_remaining wei
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            _2412 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _2423 = mem[_2412]
                                                            require mem[_2412] == mem[_2412 + 12 len 20]
                                                            if t >= ('cd', 68).length:
                                                                revert with 'NH{q', 50
                                                            else:
                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                staticcall address(_2423).getPair(address arg1, address arg2) with:
                                                                        gas gas_remaining wei
                                                                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    _2471 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _2475 = mem[_2471]
                                                                    require mem[_2471] == mem[_2471 + 12 len 20]
                                                                    if t >= mem[_1876]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[(32 * t) + _1876 + 32] = 0
                                                                        if t >= mem[_1877]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[(32 * t) + _1877 + 32] = 0
                                                                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                    gas gas_remaining wei
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _2507 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _2523 = mem[_2507]
                                                                                require mem[_2507] == mem[_2507 + 12 len 20]
                                                                                if t >= ('cd', 68).length:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                    mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                    staticcall address(_2523).getPair(address arg1, address arg2) with:
                                                                                            gas gas_remaining wei
                                                                                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _2612 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        require mem[_2612] == mem[_2612 + 12 len 20]
                                                                                        if not mem[_2612 + 12 len 20]:
                                                                                            if t == -1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                t = t + 1
                                                                                                continue 
                                                                                        else:
                                                                                            staticcall address(_2475).getReserves() with:
                                                                                                    gas gas_remaining wei
                                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _2662 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 96
                                                                                                _2682 = mem[_2662]
                                                                                                require mem[_2662] == mem[_2662 + 18 len 14]
                                                                                                _2704 = mem[_2662 + 32]
                                                                                                require mem[_2662 + 32] == mem[_2662 + 50 len 14]
                                                                                                require mem[_2662 + 64] == mem[_2662 + 92 len 4]
                                                                                                if t >= ('cd', 68).length:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                    staticcall address(_2475).token0() with:
                                                                                                            gas gas_remaining wei
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _2742 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        require mem[_2742] == mem[_2742 + 12 len 20]
                                                                                                        if mem[_2742 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                            if t >= ('cd', 68).length:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                staticcall address(_2475).token1() with:
                                                                                                                        gas gas_remaining wei
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _2822 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    require mem[_2822] == mem[_2822 + 12 len 20]
                                                                                                                    if mem[_2822 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                        if t == -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            t = t + 1
                                                                                                                            continue 
                                                                                                                    else:
                                                                                                                        if t >= mem[_1876]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            mem[(32 * t) + _1876 + 32] = Mask(112, 0, _2704)
                                                                                                                            if t >= mem[_1877]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                mem[(32 * t) + _1877 + 32] = 1
                                                                                                                                if t == -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    t = t + 1
                                                                                                                                    continue 
                                                                                                        else:
                                                                                                            if t >= mem[_1876]:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                mem[(32 * t) + _1876 + 32] = Mask(112, 0, _2682)
                                                                                                                if t >= mem[_1877]:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    mem[(32 * t) + _1877 + 32] = 1
                                                                                                                    if t == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        t = t + 1
                                                                                                                        continue 
                                                    _2941 = mem[_1876]
                                                    t = 0
                                                    u = 0
                                                    while t < _2941:
                                                        _2951 = mem[64]
                                                        mem[64] = mem[64] + 128
                                                        mem[_2951] = idx
                                                        mem[_2951 + 32] = s
                                                        if t >= mem[_1876]:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            mem[_2951 + 64] = mem[(32 * t) + _1876 + 32]
                                                            if t >= mem[_1877]:
                                                                revert with 'NH{q', 50
                                                            else:
                                                                mem[_2951 + 96] = mem[(32 * t) + _1877 + 32]
                                                                if u == -1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    if u >= mem[96]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[(32 * u) + 128] = _2951
                                                                        if t == -1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            t = t + 1
                                                                            u = u + 1
                                                                            continue 
                                                    if s == -1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    mem[_1877 + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                    t = 0
                                                    while t < ('cd', 68).length:
                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                gas gas_remaining wei
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            _2413 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _2426 = mem[_2413]
                                                            require mem[_2413] == mem[_2413 + 12 len 20]
                                                            if t >= ('cd', 68).length:
                                                                revert with 'NH{q', 50
                                                            else:
                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                staticcall address(_2426).getPair(address arg1, address arg2) with:
                                                                        gas gas_remaining wei
                                                                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    _2472 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _2476 = mem[_2472]
                                                                    require mem[_2472] == mem[_2472 + 12 len 20]
                                                                    if t >= mem[_1876]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[(32 * t) + _1876 + 32] = 0
                                                                        if t >= mem[_1877]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[(32 * t) + _1877 + 32] = 0
                                                                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                    gas gas_remaining wei
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _2508 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _2524 = mem[_2508]
                                                                                require mem[_2508] == mem[_2508 + 12 len 20]
                                                                                if t >= ('cd', 68).length:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                    mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                    staticcall address(_2524).getPair(address arg1, address arg2) with:
                                                                                            gas gas_remaining wei
                                                                                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _2613 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        require mem[_2613] == mem[_2613 + 12 len 20]
                                                                                        if not mem[_2613 + 12 len 20]:
                                                                                            if t == -1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                t = t + 1
                                                                                                continue 
                                                                                        else:
                                                                                            staticcall address(_2476).getReserves() with:
                                                                                                    gas gas_remaining wei
                                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _2663 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 96
                                                                                                _2683 = mem[_2663]
                                                                                                require mem[_2663] == mem[_2663 + 18 len 14]
                                                                                                _2705 = mem[_2663 + 32]
                                                                                                require mem[_2663 + 32] == mem[_2663 + 50 len 14]
                                                                                                require mem[_2663 + 64] == mem[_2663 + 92 len 4]
                                                                                                if t >= ('cd', 68).length:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                    staticcall address(_2476).token0() with:
                                                                                                            gas gas_remaining wei
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _2743 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        require mem[_2743] == mem[_2743 + 12 len 20]
                                                                                                        if mem[_2743 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                            if t >= ('cd', 68).length:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                staticcall address(_2476).token1() with:
                                                                                                                        gas gas_remaining wei
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _2823 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    require mem[_2823] == mem[_2823 + 12 len 20]
                                                                                                                    if mem[_2823 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                        if t == -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            t = t + 1
                                                                                                                            continue 
                                                                                                                    else:
                                                                                                                        if t >= mem[_1876]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            mem[(32 * t) + _1876 + 32] = Mask(112, 0, _2705)
                                                                                                                            if t >= mem[_1877]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                mem[(32 * t) + _1877 + 32] = 1
                                                                                                                                if t == -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    t = t + 1
                                                                                                                                    continue 
                                                                                                        else:
                                                                                                            if t >= mem[_1876]:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                mem[(32 * t) + _1876 + 32] = Mask(112, 0, _2683)
                                                                                                                if t >= mem[_1877]:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    mem[(32 * t) + _1877 + 32] = 1
                                                                                                                    if t == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        t = t + 1
                                                                                                                        continue 
                                                    _2942 = mem[_1876]
                                                    t = 0
                                                    u = 0
                                                    while t < _2942:
                                                        _2953 = mem[64]
                                                        mem[64] = mem[64] + 128
                                                        mem[_2953] = idx
                                                        mem[_2953 + 32] = s
                                                        if t >= mem[_1876]:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            mem[_2953 + 64] = mem[(32 * t) + _1876 + 32]
                                                            if t >= mem[_1877]:
                                                                revert with 'NH{q', 50
                                                            else:
                                                                mem[_2953 + 96] = mem[(32 * t) + _1877 + 32]
                                                                if u == -1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    if u >= mem[96]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[(32 * u) + 128] = _2953
                                                                        if t == -1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            t = t + 1
                                                                            u = u + 1
                                                                            continue 
                                                    if s == -1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        s = s + 1
                                                        continue 
                                        else:
                                            mem[mem[64] + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                            if ('cd', 68).length > test266151307():
                                                revert with 'NH{q', 65
                                            else:
                                                mem[mem[64] + (32 * ('cd', 68).length) + 32] = ('cd', 68).length
                                                mem[64] = mem[64] + (64 * ('cd', 68).length) + 64
                                                if not ('cd', 68).length:
                                                    t = 0
                                                    while t < ('cd', 68).length:
                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                gas gas_remaining wei
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            _2414 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _2429 = mem[_2414]
                                                            require mem[_2414] == mem[_2414 + 12 len 20]
                                                            if t >= ('cd', 68).length:
                                                                revert with 'NH{q', 50
                                                            else:
                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                staticcall address(_2429).getPair(address arg1, address arg2) with:
                                                                        gas gas_remaining wei
                                                                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    _2473 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _2477 = mem[_2473]
                                                                    require mem[_2473] == mem[_2473 + 12 len 20]
                                                                    if t >= mem[_1876]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[(32 * t) + _1876 + 32] = 0
                                                                        if t >= mem[_1876 + (32 * ('cd', 68).length) + 32]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[(32 * t) + _1876 + (32 * ('cd', 68).length) + 64] = 0
                                                                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                    gas gas_remaining wei
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _2509 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _2525 = mem[_2509]
                                                                                require mem[_2509] == mem[_2509 + 12 len 20]
                                                                                if t >= ('cd', 68).length:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                    mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                    staticcall address(_2525).getPair(address arg1, address arg2) with:
                                                                                            gas gas_remaining wei
                                                                                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _2614 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        require mem[_2614] == mem[_2614 + 12 len 20]
                                                                                        if not mem[_2614 + 12 len 20]:
                                                                                            if t == -1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                t = t + 1
                                                                                                continue 
                                                                                        else:
                                                                                            staticcall address(_2477).getReserves() with:
                                                                                                    gas gas_remaining wei
                                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _2664 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 96
                                                                                                _2684 = mem[_2664]
                                                                                                require mem[_2664] == mem[_2664 + 18 len 14]
                                                                                                _2706 = mem[_2664 + 32]
                                                                                                require mem[_2664 + 32] == mem[_2664 + 50 len 14]
                                                                                                require mem[_2664 + 64] == mem[_2664 + 92 len 4]
                                                                                                if t >= ('cd', 68).length:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                    staticcall address(_2477).token0() with:
                                                                                                            gas gas_remaining wei
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _2744 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        require mem[_2744] == mem[_2744 + 12 len 20]
                                                                                                        if mem[_2744 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                            if t >= ('cd', 68).length:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                staticcall address(_2477).token1() with:
                                                                                                                        gas gas_remaining wei
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _2824 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    require mem[_2824] == mem[_2824 + 12 len 20]
                                                                                                                    if mem[_2824 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                        if t == -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            t = t + 1
                                                                                                                            continue 
                                                                                                                    else:
                                                                                                                        if t >= mem[_1876]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            mem[(32 * t) + _1876 + 32] = Mask(112, 0, _2706)
                                                                                                                            if t >= mem[_1876 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                mem[(32 * t) + _1876 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                if t == -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    t = t + 1
                                                                                                                                    continue 
                                                                                                        else:
                                                                                                            if t >= mem[_1876]:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                mem[(32 * t) + _1876 + 32] = Mask(112, 0, _2684)
                                                                                                                if t >= mem[_1876 + (32 * ('cd', 68).length) + 32]:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    mem[(32 * t) + _1876 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                    if t == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        t = t + 1
                                                                                                                        continue 
                                                    _2943 = mem[_1876]
                                                    t = 0
                                                    u = 0
                                                    while t < _2943:
                                                        _2955 = mem[64]
                                                        mem[64] = mem[64] + 128
                                                        mem[_2955] = idx
                                                        mem[_2955 + 32] = s
                                                        if t >= mem[_1876]:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            mem[_2955 + 64] = mem[(32 * t) + _1876 + 32]
                                                            if t >= mem[_1876 + (32 * ('cd', 68).length) + 32]:
                                                                revert with 'NH{q', 50
                                                            else:
                                                                mem[_2955 + 96] = mem[(32 * t) + _1876 + (32 * ('cd', 68).length) + 64]
                                                                if u == -1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    if u >= mem[96]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[(32 * u) + 128] = _2955
                                                                        if t == -1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            t = t + 1
                                                                            u = u + 1
                                                                            continue 
                                                    if s == -1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    mem[_1876 + (32 * ('cd', 68).length) + 64 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                    t = 0
                                                    while t < ('cd', 68).length:
                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                gas gas_remaining wei
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            _2415 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _2432 = mem[_2415]
                                                            require mem[_2415] == mem[_2415 + 12 len 20]
                                                            if t >= ('cd', 68).length:
                                                                revert with 'NH{q', 50
                                                            else:
                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                staticcall address(_2432).getPair(address arg1, address arg2) with:
                                                                        gas gas_remaining wei
                                                                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    _2474 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _2478 = mem[_2474]
                                                                    require mem[_2474] == mem[_2474 + 12 len 20]
                                                                    if t >= mem[_1876]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[(32 * t) + _1876 + 32] = 0
                                                                        if t >= mem[_1876 + (32 * ('cd', 68).length) + 32]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[(32 * t) + _1876 + (32 * ('cd', 68).length) + 64] = 0
                                                                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                    gas gas_remaining wei
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _2510 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _2526 = mem[_2510]
                                                                                require mem[_2510] == mem[_2510 + 12 len 20]
                                                                                if t >= ('cd', 68).length:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                    mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                    staticcall address(_2526).getPair(address arg1, address arg2) with:
                                                                                            gas gas_remaining wei
                                                                                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _2615 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        require mem[_2615] == mem[_2615 + 12 len 20]
                                                                                        if not mem[_2615 + 12 len 20]:
                                                                                            if t == -1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                t = t + 1
                                                                                                continue 
                                                                                        else:
                                                                                            staticcall address(_2478).getReserves() with:
                                                                                                    gas gas_remaining wei
                                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _2665 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 96
                                                                                                _2685 = mem[_2665]
                                                                                                require mem[_2665] == mem[_2665 + 18 len 14]
                                                                                                _2707 = mem[_2665 + 32]
                                                                                                require mem[_2665 + 32] == mem[_2665 + 50 len 14]
                                                                                                require mem[_2665 + 64] == mem[_2665 + 92 len 4]
                                                                                                if t >= ('cd', 68).length:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                    staticcall address(_2478).token0() with:
                                                                                                            gas gas_remaining wei
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _2745 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        require mem[_2745] == mem[_2745 + 12 len 20]
                                                                                                        if mem[_2745 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                            if t >= ('cd', 68).length:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                staticcall address(_2478).token1() with:
                                                                                                                        gas gas_remaining wei
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _2825 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    require mem[_2825] == mem[_2825 + 12 len 20]
                                                                                                                    if mem[_2825 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                        if t == -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            t = t + 1
                                                                                                                            continue 
                                                                                                                    else:
                                                                                                                        if t >= mem[_1876]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            mem[(32 * t) + _1876 + 32] = Mask(112, 0, _2707)
                                                                                                                            if t >= mem[_1876 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                mem[(32 * t) + _1876 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                if t == -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    t = t + 1
                                                                                                                                    continue 
                                                                                                        else:
                                                                                                            if t >= mem[_1876]:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                mem[(32 * t) + _1876 + 32] = Mask(112, 0, _2685)
                                                                                                                if t >= mem[_1876 + (32 * ('cd', 68).length) + 32]:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    mem[(32 * t) + _1876 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                    if t == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        t = t + 1
                                                                                                                        continue 
                                                    _2944 = mem[_1876]
                                                    t = 0
                                                    u = 0
                                                    while t < _2944:
                                                        _2957 = mem[64]
                                                        mem[64] = mem[64] + 128
                                                        mem[_2957] = idx
                                                        mem[_2957 + 32] = s
                                                        if t >= mem[_1876]:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            mem[_2957 + 64] = mem[(32 * t) + _1876 + 32]
                                                            if t >= mem[_1876 + (32 * ('cd', 68).length) + 32]:
                                                                revert with 'NH{q', 50
                                                            else:
                                                                mem[_2957 + 96] = mem[(32 * t) + _1876 + (32 * ('cd', 68).length) + 64]
                                                                if u == -1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    if u >= mem[96]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[(32 * u) + 128] = _2957
                                                                        if t == -1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            t = t + 1
                                                                            u = u + 1
                                                                            continue 
                                                    if s == -1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        s = s + 1
                                                        continue 
                            if idx == -1:
                                revert with 'NH{q', 17
                            else:
                                idx = idx + 1
                                continue 
                        _1299 = mem[64]
                        mem[mem[64]] = 32
                        _1304 = mem[96]
                        mem[mem[64] + 32] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + 64
                        while s < _1304:
                            _1838 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_1838 + 32]
                            mem[u + 64] = mem[_1838 + 64]
                            mem[u + 96] = mem[_1838 + 96]
                            s = s + 1
                            t = t + 32
                            u = u + 128
                            continue 
                        return memory
                          from mem[64]
                           len _1299 + (128 * _1304) + -mem[64] + 64
}



}
