contract main {




// =====================  Runtime code  =====================


address stor1;
address stor2;
mapping of uint256 sub_1f530561;
array of address holderList;

function holderList(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < holderList.length
    return address(holderList[arg1])
}

function sub_1f530561(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_1f530561[arg1]
}

function getHoldersCount() {
    return holderList.length
}

function sub_d2bc7d85(?) {
    require msg.sender == stor2
    idx = 0
    while idx < holderList.length:
        mem[0] = 4
        address(holderList[idx]) = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_34540e18(?) {
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if holderList.length:
        idx = 0
        while idx < holderList.length:
            mem[0] = 4
            if address(holderList[idx]) != msg.sender:
                holderList.length++
                uint256(holderList[holderList.length]) = msg.sender or Mask(96, 160, uint256(holderList[holderList.length]))
                mem[0] = msg.sender
                mem[32] = 3
                sub_1f530561[msg.sender] = ext_call.return_data[0]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        holderList.length++
        uint256(holderList[holderList.length]) = msg.sender or Mask(96, 160, uint256(holderList[holderList.length]))
        sub_1f530561[msg.sender] = ext_call.return_data[0]
}

function sub_26cc6cc1(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor2
    require ext_code.size(msg.sender)
    call msg.sender.0xd293aba4 with:
         gas gas_remaining wei
        args 0, uint32(this.address), 96, arg1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    while idx < holderList.length:
        mem[32] = 3
        if arg1 and sub_1f530561[address(stor4[idx])] > -1 / arg1:
            revert with 0, 17
        if idx >= holderList.length:
            revert with 0, 50
        mem[0] = 4
        if eth.balance(this.address) < arg1 * sub_1f530561[address(stor4[idx])] / 100:
            revert with 0, 'Address: insufficient balance'
        call address(holderList[idx]) with:
           value arg1 * sub_1f530561[address(stor4[idx])] / 100 wei
             gas gas_remaining wei
        if return_data.size:
            _23 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_23] = return_data.size
            mem[_23 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function distributeTokens(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require msg.sender == stor2
    mem[132] = this.address
    mem[164] = arg2
    mem[96] = 68
    mem[132 len 28] = Mask(224, 32, this.address) >> 32
    mem[128 len 4] = unknown_0xa9059cbb(?????)
    mem[200] = arg1
    mem[232] = 96
    mem[296] = 68
    mem[328 len 96] = unknown_0xa9059cbb(?????), this.address, arg2, 0, address(arg1) << 32
    mem[396] = 0
    mem[264] = 0
    require ext_code.size(msg.sender)
    call msg.sender.0xd293aba4 with:
         gas gas_remaining wei
        args address(arg1), 96, 0, 68, unknown_0xa9059cbb(?????), this.address, arg2, 0, address(arg1) << 32 >> 288, 0
    mem[196] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 196
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    while idx < holderList.length:
        mem[0] = address(holderList[idx])
        mem[32] = 3
        if arg2 and sub_1f530561[address(stor4[idx])] > -1 / arg2:
            revert with 0, 17
        _293 = mem[64]
        mem[mem[64] + 36] = address(holderList[idx])
        mem[mem[64] + 68] = arg2 * sub_1f530561[address(stor4[idx])] / 100
        _294 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_294 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_294 + 36 len 28]
        mem[64] = _293 + 164
        mem[_293 + 100] = 32
        mem[_293 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        _308 = mem[_294]
        s = 0
        while s < _308:
            mem[s + _293 + 164] = mem[s + _294 + 32]
            s = s + 32
            continue 
        if ceil32(_308) > _308:
            mem[_293 + _308 + 164] = 0
        call arg1.mem[_293 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_293 + 168 len _308 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_293 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_293 + 168] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _293 + 232] = mem[idx + _293 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_293 + 232]
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[64] = _293 + ceil32(return_data.size) + 165
            mem[_293 + 164] = return_data.size
            mem[_293 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_293 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_293 + ceil32(return_data.size) + 169] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _293 + ceil32(return_data.size) + 233] = mem[idx + _293 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_293 + ceil32(return_data.size) + 233]
            if return_data.size:
                require return_data.size >= 32
                require mem[_293 + 196] == bool(mem[_293 + 196])
                if not mem[_293 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x26cc6cc1(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x26cc6cc1(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require msg.sender == stor2
                require ext_code.size(msg.sender)
                call msg.sender.0xd293aba4 with:
                     gas gas_remaining wei
                    args this.address, 96, arg1, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 128
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                idx = 0
                while idx < holderList.length:
                    mem[32] = 3
                    if arg1 and sub_1f530561[address(stor4[idx])] > -1 / arg1:
                        revert with 0, 17
                    if idx >= holderList.length:
                        revert with 0, 50
                    mem[0] = 4
                    if eth.balance(this.address) < arg1 * sub_1f530561[address(stor4[idx])] / 100:
                        revert with 0, 'Address: insufficient balance'
                    call address(holderList[idx]) with:
                       value arg1 * sub_1f530561[address(stor4[idx])] / 100 wei
                         gas gas_remaining wei
                    if return_data.size:
                        _193 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_193] = return_data.size
                        mem[_193 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x34540e18(?????):
                    if unknown_0x73889f4a(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return holderList.length
                    require unknown_0xd2bc7d85(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require msg.sender == stor2
                    idx = 0
                    while idx < holderList.length:
                        mem[0] = 4
                        address(holderList[idx]) = 0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    require not msg.value
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if holderList.length:
                        idx = 0
                        while idx < holderList.length:
                            mem[0] = 4
                            if address(holderList[idx]) != msg.sender:
                                holderList.length++
                                uint256(holderList[holderList.length]) = msg.sender or Mask(96, 160, uint256(holderList[holderList.length]))
                                mem[0] = msg.sender
                                mem[32] = 3
                                sub_1f530561[msg.sender] = ext_call.return_data[0]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        holderList.length++
                        uint256(holderList[holderList.length]) = msg.sender or Mask(96, 160, uint256(holderList[holderList.length]))
                        sub_1f530561[msg.sender] = ext_call.return_data[0]
        else:
            if uint32(call.func_hash) >> 224 != unknown_0x158a4988(?????):
                if unknown_0x16ad42ad(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 < holderList.length
                    return address(holderList[arg1])
                require unknown_0x1f530561(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return sub_1f530561[arg1]
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            require msg.sender == stor2
            mem[164] = this.address
            mem[196] = arg2
            mem[128] = 68
            mem[164 len 28] = Mask(224, 32, this.address) >> 32
            mem[160 len 4] = unknown_0xa9059cbb(?????)
            mem[232] = address(arg1)
            mem[264] = 96
            mem[328] = 68
            mem[360 len 96] = unknown_0xa9059cbb(?????), this.address, arg2, 0, address(arg1) << 32
            mem[428] = 0
            mem[296] = 0
            require ext_code.size(msg.sender)
            call msg.sender.0xd293aba4 with:
                 gas gas_remaining wei
                args address(arg1), 96, 0, 68, unknown_0xa9059cbb(?????), this.address, arg2, 0, address(arg1) << 32 >> 288, 0
            mem[228] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 228
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            idx = 0
            while idx < holderList.length:
                mem[0] = address(holderList[idx])
                mem[32] = 3
                if arg2 and sub_1f530561[address(stor4[idx])] > -1 / arg2:
                    revert with 0, 17
                _340 = mem[64]
                mem[mem[64] + 36] = address(holderList[idx])
                mem[mem[64] + 68] = arg2 * sub_1f530561[address(stor4[idx])] / 100
                _341 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_341 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_341 + 36 len 28]
                mem[64] = _340 + 164
                mem[_340 + 100] = 32
                mem[_340 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg1)):
                    revert with 0, 'Address: call to non-contract'
                _355 = mem[_341]
                s = 0
                while s < _355:
                    mem[s + _340 + 164] = mem[s + _341 + 32]
                    s = s + 32
                    continue 
                if ceil32(_355) > _355:
                    mem[_340 + _355 + 164] = 0
                call address(arg1).mem[_340 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_340 + 168 len _355 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_340 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_340 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _340 + 232] = mem[idx + _340 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_340 + 232]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _340 + ceil32(return_data.size) + 165
                    mem[_340 + 164] = return_data.size
                    mem[_340 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_340 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_340 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _340 + ceil32(return_data.size) + 233] = mem[idx + _340 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_340 + ceil32(return_data.size) + 233]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_340 + 196] == bool(mem[_340 + 196])
                        if not mem[_340 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
}



}
