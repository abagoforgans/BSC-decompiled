contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 stor1;
uint256 stor2;
uint256 totalOrder;
array of struct stor4;
array of struct stor5;

function sub_20034b5b(?) payable {
    return bool(stor1.length.field_160)
}

function owner() payable {
    return owner
}

function getTotalOrder() payable {
    return totalOrder
}

function token() payable {
    return address(stor1.length)
}

function _fallback() payable {
    revert
}

function sub_58a5e98c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return not not stor5[address(arg1)].field_0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setProductPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 <= 0:
        revert with 0, 'Price should not less than zero'
    stor2 = arg1
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor1.length) = arg1
}

function sub_a62ea328(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1.length.field_160 = Mask(96, 0, bool(arg1))
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(stor1.length))
    call address(stor1.length).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_06b19db5(?) payable {
    mem[64] = (32 * stor4.length) + 128
    mem[96] = stor4.length
    if not stor4.length:
        mem[(32 * stor4.length) + 128] = 32
        mem[(32 * stor4.length) + 160] = stor4.length
        idx = 0
        s = 128
        t = (32 * stor4.length) + 192
        while idx < stor4.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor4.length) + 128
           len (96 * stor4.length) + 64
    mem[128] = address(stor4.field_0)
    idx = 128
    s = 0
    while (32 * stor4.length) + 96 > idx:
        mem[idx + 32] = stor4[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor4.length) + 128] = 32
    mem[(32 * stor4.length) + 160] = stor4.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor4.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor4.length) + -mem[64] + 192
}

function sub_ff8c6463(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if not stor1.length.field_160:
        revert with 0, 'Preorder already ended.'
    require ext_code.size(address(stor1.length))
    call address(stor1.length).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not stor5[address(msg.sender)].field_0:
        stor4.length++
        stor4[stor4.length].field_0 = msg.sender
    if totalOrder == -1:
        revert with 'NH{q', 17
    totalOrder++
    stor5[address(msg.sender)].field_0++
    stor5[address(msg.sender)][stor5[address(msg.sender)].field_0].field_0 = totalOrder
    if stor5[address(msg.sender)][stor5[address(msg.sender)].field_0].field_256:
        if stor5[address(msg.sender)][stor5[address(msg.sender)].field_0].field_256 == stor5[address(msg.sender)][stor5[address(msg.sender)].field_0].field_257 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor[sha3((2 * stor5[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor5', 5)) + 1)][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor5[address(msg.sender)][stor5[address(msg.sender)].field_0].field_256 = 0
            idx = 0
            while stor5[address(msg.sender)][stor5[address(msg.sender)].field_0].field_257 + 31 / 32 > idx:
                stor[idx + sha3((2 * stor5[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor5', 5)) + 1)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor5[address(msg.sender)][stor5[address(msg.sender)].field_0].field_256 == stor5[address(msg.sender)][stor5[address(msg.sender)].field_0].field_257 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor[sha3((2 * stor5[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor5', 5)) + 1)][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor5[address(msg.sender)][stor5[address(msg.sender)].field_0].field_256 = 0
            idx = 0
            while stor5[address(msg.sender)][stor5[address(msg.sender)].field_0].field_257 + 31 / 32 > idx:
                stor[idx + sha3((2 * stor5[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor5', 5)) + 1)].field_0 = 0
                idx = idx + 1
                continue 
    emit 0xedd8fb91: totalOrder, Array(len=arg1.length, data=arg1[all])
    return totalOrder
}

function orders(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < stor5[arg1].field_0
    if stor5[arg1][arg2].field_256:
        if stor5[arg1][arg2].field_256 == stor5[arg1][arg2].field_257 < 32:
            revert with 'NH{q', 34
        if stor5[arg1][arg2].field_256:
            if stor5[arg1][arg2].field_256 == stor5[arg1][arg2].field_257 < 32:
                revert with 'NH{q', 34
            if stor5[arg1][arg2].field_257:
                if 31 >= stor5[arg1][arg2].field_257:
                    mem[128] = 256 * stor5[arg1][arg2].field_264
                else:
                    mem[128] = stor[sha3((2 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor5', 5)) + 1)].field_0
                    idx = 128
                    s = 0
                    while stor5[arg1][arg2].field_257 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((2 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor5', 5)) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor5[arg1][arg2].field_256 == stor5[arg1][arg2].field_257 < 32:
                revert with 'NH{q', 34
            if stor5[arg1][arg2].field_257:
                if 31 >= stor5[arg1][arg2].field_257:
                    mem[128] = 256 * stor5[arg1][arg2].field_264
                else:
                    mem[128] = stor[sha3((2 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor5', 5)) + 1)].field_0
                    idx = 128
                    s = 0
                    while stor5[arg1][arg2].field_257 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((2 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor5', 5)) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor5[arg1][arg2].field_0, 
               Array(len=2 * Mask(256, -1, stor5[arg1][arg2].field_257), data=mem[128 len ceil32(stor5[arg1][arg2].field_257)])
    if stor5[arg1][arg2].field_256 == stor5[arg1][arg2].field_257 < 32:
        revert with 'NH{q', 34
    if stor5[arg1][arg2].field_256:
        if stor5[arg1][arg2].field_256 == stor5[arg1][arg2].field_257 < 32:
            revert with 'NH{q', 34
        if stor5[arg1][arg2].field_257:
            if 31 >= stor5[arg1][arg2].field_257:
                mem[128] = 256 * stor5[arg1][arg2].field_264
            else:
                mem[128] = stor[sha3((2 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor5', 5)) + 1)].field_0
                idx = 128
                s = 0
                while stor5[arg1][arg2].field_257 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((2 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor5', 5)) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor5[arg1][arg2].field_256 == stor5[arg1][arg2].field_257 < 32:
            revert with 'NH{q', 34
        if stor5[arg1][arg2].field_257:
            if 31 >= stor5[arg1][arg2].field_257:
                mem[128] = 256 * stor5[arg1][arg2].field_264
            else:
                mem[128] = stor[sha3((2 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor5', 5)) + 1)].field_0
                idx = 128
                s = 0
                while stor5[arg1][arg2].field_257 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((2 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor5', 5)) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor5[arg1][arg2].field_0, 
           Array(len=stor5[arg1][arg2].field_256, data=mem[128 len ceil32(stor5[arg1][arg2].field_257)])
}

function getUserOrders(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 5
    if stor5[address(arg1)].field_0 > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor5[address(arg1)].field_0
    mem[64] = (32 * stor5[address(arg1)].field_0) + 128
    if not stor5[address(arg1)].field_0:
        idx = 0
        while idx < stor5[address(arg1)].field_0:
            mem[32] = 5
            if idx >= stor5[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(arg1), 5)
            _66 = mem[64]
            mem[64] = mem[64] + 64
            mem[_66] = stor5[address(arg1)][idx].field_0
            if stor5[address(arg1)][idx].field_256:
                if stor5[address(arg1)][idx].field_256 == stor5[address(arg1)][idx].field_257 < 32:
                    revert with 'NH{q', 34
                _68 = mem[64]
                mem[64] = mem[64] + ceil32(stor5[address(arg1)][idx].field_257) + 32
                mem[_68] = stor5[address(arg1)][idx].field_257
                if stor5[address(arg1)][idx].field_256:
                    if stor5[address(arg1)][idx].field_256 == stor5[address(arg1)][idx].field_257 < 32:
                        revert with 'NH{q', 34
                    if stor5[address(arg1)][idx].field_257:
                        if 31 >= stor5[address(arg1)][idx].field_257:
                            mem[_68 + 32] = 256 * stor5[address(arg1)][idx].field_264
                        else:
                            mem[0] = (2 * idx) + sha3(sha3(address(arg1), 5)) + 1
                            mem[_68 + 32] = stor[sha3((2 * idx) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)) + 1)].field_0
                            s = _68 + 32
                            t = sha3(mem[0])
                            while _68 + stor5[address(arg1)][idx].field_257 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if stor5[address(arg1)][idx].field_256 == stor5[address(arg1)][idx].field_257 < 32:
                        revert with 'NH{q', 34
                    if stor5[address(arg1)][idx].field_257:
                        if 31 >= stor5[address(arg1)][idx].field_257:
                            mem[_68 + 32] = 256 * stor5[address(arg1)][idx].field_264
                        else:
                            mem[0] = (2 * idx) + sha3(sha3(address(arg1), 5)) + 1
                            mem[_68 + 32] = stor[sha3((2 * idx) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)) + 1)].field_0
                            s = _68 + 32
                            t = sha3(mem[0])
                            while _68 + stor5[address(arg1)][idx].field_257 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_66 + 32] = _68
            else:
                if stor5[address(arg1)][idx].field_256 == stor5[address(arg1)][idx].field_257 < 32:
                    revert with 'NH{q', 34
                _70 = mem[64]
                mem[64] = mem[64] + ceil32(stor5[address(arg1)][idx].field_257) + 32
                mem[_70] = stor5[address(arg1)][idx].field_257
                if stor5[address(arg1)][idx].field_256:
                    if stor5[address(arg1)][idx].field_256 == stor5[address(arg1)][idx].field_257 < 32:
                        revert with 'NH{q', 34
                    if stor5[address(arg1)][idx].field_257:
                        if 31 >= stor5[address(arg1)][idx].field_257:
                            mem[_70 + 32] = 256 * stor5[address(arg1)][idx].field_264
                        else:
                            mem[0] = (2 * idx) + sha3(sha3(address(arg1), 5)) + 1
                            mem[_70 + 32] = stor[sha3((2 * idx) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)) + 1)].field_0
                            s = _70 + 32
                            t = sha3(mem[0])
                            while _70 + stor5[address(arg1)][idx].field_257 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if stor5[address(arg1)][idx].field_256 == stor5[address(arg1)][idx].field_257 < 32:
                        revert with 'NH{q', 34
                    if stor5[address(arg1)][idx].field_257:
                        if 31 >= stor5[address(arg1)][idx].field_257:
                            mem[_70 + 32] = 256 * stor5[address(arg1)][idx].field_264
                        else:
                            mem[0] = (2 * idx) + sha3(sha3(address(arg1), 5)) + 1
                            mem[_70 + 32] = stor[sha3((2 * idx) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)) + 1)].field_0
                            s = _70 + 32
                            t = sha3(mem[0])
                            while _70 + stor5[address(arg1)][idx].field_257 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_66 + 32] = _70
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _66
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _64 = mem[64]
        mem[mem[64]] = 32
        _67 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _67:
            mem[u] = t + -_64 - 64
            _122 = mem[s]
            mem[t] = mem[mem[s]]
            _133 = mem[_122 + 32]
            mem[t + 32] = 64
            _134 = mem[_133]
            mem[t + 64] = mem[_133]
            v = 0
            while v < _134:
                mem[t + v + 96] = mem[_133 + v + 32]
                v = v + 32
                continue 
            if ceil32(_134) > _134:
                mem[t + _134 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_134) + 96
            u = u + 32
            continue 
    else:
        mem[64] = (32 * stor5[address(arg1)].field_0) + 192
        mem[(32 * stor5[address(arg1)].field_0) + 128] = 0
        mem[(32 * stor5[address(arg1)].field_0) + 160] = 96
        mem[var20001] = (32 * stor5[address(arg1)].field_0) + 128
        s = var20001
        idx = var20002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * stor5[address(arg1)].field_0) + 128] = 0
            mem[(32 * stor5[address(arg1)].field_0) + 160] = 96
            mem[s + 32] = (32 * stor5[address(arg1)].field_0) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < stor5[address(arg1)].field_0:
            mem[32] = 5
            if idx >= stor5[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(arg1), 5)
            _165 = mem[64]
            mem[64] = mem[64] + 64
            mem[_165] = stor5[address(arg1)][idx].field_0
            if stor5[address(arg1)][idx].field_256:
                if stor5[address(arg1)][idx].field_256 == stor5[address(arg1)][idx].field_257 < 32:
                    revert with 'NH{q', 34
                _167 = mem[64]
                mem[64] = mem[64] + ceil32(stor5[address(arg1)][idx].field_257) + 32
                mem[_167] = stor5[address(arg1)][idx].field_257
                if stor5[address(arg1)][idx].field_256:
                    if stor5[address(arg1)][idx].field_256 == stor5[address(arg1)][idx].field_257 < 32:
                        revert with 'NH{q', 34
                    if stor5[address(arg1)][idx].field_257:
                        if 31 >= stor5[address(arg1)][idx].field_257:
                            mem[_167 + 32] = 256 * stor5[address(arg1)][idx].field_264
                        else:
                            mem[0] = (2 * idx) + sha3(sha3(address(arg1), 5)) + 1
                            mem[_167 + 32] = stor[sha3((2 * idx) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)) + 1)].field_0
                            s = _167 + 32
                            t = sha3(mem[0])
                            while _167 + stor5[address(arg1)][idx].field_257 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if stor5[address(arg1)][idx].field_256 == stor5[address(arg1)][idx].field_257 < 32:
                        revert with 'NH{q', 34
                    if stor5[address(arg1)][idx].field_257:
                        if 31 >= stor5[address(arg1)][idx].field_257:
                            mem[_167 + 32] = 256 * stor5[address(arg1)][idx].field_264
                        else:
                            mem[0] = (2 * idx) + sha3(sha3(address(arg1), 5)) + 1
                            mem[_167 + 32] = stor[sha3((2 * idx) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)) + 1)].field_0
                            s = _167 + 32
                            t = sha3(mem[0])
                            while _167 + stor5[address(arg1)][idx].field_257 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_165 + 32] = _167
            else:
                if stor5[address(arg1)][idx].field_256 == stor5[address(arg1)][idx].field_257 < 32:
                    revert with 'NH{q', 34
                _168 = mem[64]
                mem[64] = mem[64] + ceil32(stor5[address(arg1)][idx].field_257) + 32
                mem[_168] = stor5[address(arg1)][idx].field_257
                if stor5[address(arg1)][idx].field_256:
                    if stor5[address(arg1)][idx].field_256 == stor5[address(arg1)][idx].field_257 < 32:
                        revert with 'NH{q', 34
                    if stor5[address(arg1)][idx].field_257:
                        if 31 >= stor5[address(arg1)][idx].field_257:
                            mem[_168 + 32] = 256 * stor5[address(arg1)][idx].field_264
                        else:
                            mem[0] = (2 * idx) + sha3(sha3(address(arg1), 5)) + 1
                            mem[_168 + 32] = stor[sha3((2 * idx) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)) + 1)].field_0
                            s = _168 + 32
                            t = sha3(mem[0])
                            while _168 + stor5[address(arg1)][idx].field_257 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if stor5[address(arg1)][idx].field_256 == stor5[address(arg1)][idx].field_257 < 32:
                        revert with 'NH{q', 34
                    if stor5[address(arg1)][idx].field_257:
                        if 31 >= stor5[address(arg1)][idx].field_257:
                            mem[_168 + 32] = 256 * stor5[address(arg1)][idx].field_264
                        else:
                            mem[0] = (2 * idx) + sha3(sha3(address(arg1), 5)) + 1
                            mem[_168 + 32] = stor[sha3((2 * idx) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)) + 1)].field_0
                            s = _168 + 32
                            t = sha3(mem[0])
                            while _168 + stor5[address(arg1)][idx].field_257 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_165 + 32] = _168
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _165
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _163 = mem[64]
        mem[mem[64]] = 32
        _166 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _166:
            mem[u] = t + -_163 - 64
            _191 = mem[s]
            mem[t] = mem[mem[s]]
            _198 = mem[_191 + 32]
            mem[t + 32] = 64
            _199 = mem[_198]
            mem[t + 64] = mem[_198]
            v = 0
            while v < _199:
                mem[t + v + 96] = mem[_198 + v + 32]
                v = v + 32
                continue 
            if ceil32(_199) > _199:
                mem[t + _199 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_199) + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
